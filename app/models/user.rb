class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :lastname, presence: true, length: { minimum: 3, maximum: 20 }
end