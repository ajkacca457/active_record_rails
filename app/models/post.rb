class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 40 }
  validates :description, presence: true

  belongs_to :user

  has_many :comments
end
