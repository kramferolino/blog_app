class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :notifications, as: :recipient, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at", "views"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["comments", "notifications", "posts"]
  end

  enum role: [:user, :admin]
  after_initialize :set_default_role, if: :new_record?
    
  private 

  def set_default_role
    self.role ||= :user    
  end
end
