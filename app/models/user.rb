class User < ActiveRecord::Base
  validates :username, presence: true
  has_many :questions
  has_many :answers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
