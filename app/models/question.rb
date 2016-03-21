class Question < ActiveRecord::Base
  validates :question, presence: true
  has_many :answers, dependent: :destroy
  belongs_to :user
end
