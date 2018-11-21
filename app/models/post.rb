class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :postlikes

  validates :title, presence: true
  validates :body, presence: true

  def likes
    self.postlikes.size
  end

  def find_postlike(user)
    self.postlikes.find{|postlike| postlike.user_id == user.id}
  end

end
