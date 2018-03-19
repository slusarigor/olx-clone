class Category < ApplicationRecord
  belongs_to :parent, class_name: 'Category', foreign_key: 'parent_id', optional: true
  has_many :products
  validates :name, presence: true, uniqueness: true
end
