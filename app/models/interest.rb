class Interest < ApplicationRecord
  has_many :user_interests
  has_many :users, through: :user_interests
  validates :title, presence: true, uniqueness: true

  def user_names
    self.users.map do |user|
      if user.profile
        if user.profile.real_name
          user.profile.real_name
        else
          user.profile.alias
        end
      else
        user.email
      end
    end.join(', ')
  end
end
