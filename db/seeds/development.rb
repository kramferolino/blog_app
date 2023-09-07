# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Seeding development database'
kram = User.first_or_create!(email: 'kramferolino@gmail.com', 
                            password: 'password',
                            password_confirmation: 'password',
                            first_name: 'Mark',
                            last_name: 'Ferolino',
                            role: User.roles[:admin])
john = User.create!(email: 'john@doe.com', 
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'John',
                    last_name: 'Doe')
Address.first_or_create!(street: '123 Main St.',
                        city: 'Las Piñas City',
                        state: 'NCR',
                        zip: '1746',
                        country: 'Philippines',
                        user: kram)
Address.first_or_create!(street: '123 Main St.',
                        city: 'Las Piñas City',
                        state: 'NCR',
                        zip: '1746',
                        country: 'Philippines',
                        user: john)
category = Category.first_or_create!(name:"Uncategorized", display_in_nav: true)
Category.first_or_create!(name:"Cars", display_in_nav: false)
Category.first_or_create!(name:"Bikes", display_in_nav: true)
Category.first_or_create!(name:"Boats", display_in_nav: true)

elapsed = Benchmark.measure do
    posts = []
    10.times do |x|
        puts "Creating post #{x}"
        post = Post.create(title: "Title #{x}",
                    body: "Body #{x} content example.", 
                    user: kram,
                    category: category)
        5.times do |y|
            puts "Creating comment #{y} for post #{x}"
            post.comments.build(body: "Comment #{y}",
                                user: john)
        end
        posts.push(post)
    end
    Post.import(posts, recursive: true)
end

puts "Seeded development DB in #{elapsed.real} seconds"