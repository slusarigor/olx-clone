class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :category, presence: true
end
