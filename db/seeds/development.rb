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
# User.create(email: 'kramferolino@gmail.com', first_name: 'Mark', last_name: 'Ferolino', password: 'password', password_confirmation: 'password')
# User.create(email: 'john@doe.com', first_name: 'John', last_name: 'Doe', password: 'password', password_confirmation: 'password')
elapsed = Benchmark.measure do
    posts = []
    10.times do |x|
        puts "Creating post #{x}"
        post = Post.create(title: "Title #{x}",
                    body: "Body #{x} content example.", 
                    user: kram)
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