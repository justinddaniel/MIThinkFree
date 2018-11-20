class Interest < ApplicationRecord
  has_many :user_interests
  has_many :users, through: :user_interests
  validates :title, presence: true, uniqueness: true

  def user_names
    self.users.map do |user|
      user.display_name
    end.join(', ')
  end
end
