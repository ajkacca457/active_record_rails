class User < ApplicationRecord
  PASSWORD_FORMAT = /\A
    (?=.{8,})          # Must contain 8 or more characters
    (?=.*\d)           # Must contain a digit
    (?=.*[a-z])        # Must contain a lower case character
    (?=.*[A-Z])        # Must contain an upper case character
    (?=.*[[:^alnum:]]) # Must contain a symbol
  /x.freeze

  validates :user_name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 25 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 5, maximum: 20 }
  validates :password, presence: true, format: { with: PASSWORD_FORMAT }, length: { minimum: 8, maximum: 20 }

  has_many :posts
  has_many :comments
end
