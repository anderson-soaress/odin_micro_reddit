class Post < ApplicationRecord
  validates :title, :description, :user, presence: true
  validates :title, length: {in 4..12}
  validates :description, length: {in 8..24}

  has_many :comments
  belongs_to :user
end
