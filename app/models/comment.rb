class Comment < ApplicationRecord
  validates :description, :user, :post, presence: true
  validates :description, length: {in 2..24}

  belongs_to :user
  belongs_to :post
end
