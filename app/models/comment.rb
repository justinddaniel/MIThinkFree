class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :commentlikes
  validates :body, presence: true

  def likes
    self.commentlikes.size
  end

  def find_commentlike(user)
    self.commentlikes.find{|commentlike| commentlike.user_id == user.id}
  end
end
