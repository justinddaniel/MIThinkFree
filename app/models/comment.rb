class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :commentlikes
  validates :body, presence: true

  def likes
    self.commentlikes.size
  end
end
