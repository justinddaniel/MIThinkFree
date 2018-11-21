class Blogpostlike < ApplicationRecord
  belongs_to :blogpost
  belongs_to :user
end
