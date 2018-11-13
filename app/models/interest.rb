class Interest < ApplicationRecord
  has_many :user_interests
  has_many :users, through: :user_interests
  validates :title, presence: true, uniqueness: true
end
