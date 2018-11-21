class Blogpost < ApplicationRecord
  belongs_to :user
  has_many :blogpostlikes
  validates :body, presence: true
  validates :title, presence: true

  def likes
    self.blogpostlikes.size
  end

  def find_blogpostlike(user)
    self.blogpostlikes.find{|blogpostlike| blogpostlike.user_id == user.id}
  end
end
