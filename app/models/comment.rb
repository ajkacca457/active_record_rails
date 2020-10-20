class Comment < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 5, maximum: 40 }

  belongs_to :user
  belongs_to :post
end
