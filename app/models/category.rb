class Category < ApplicationRecord
  belongs_to :parent, class_name: 'Category', foreign_key: 'parent_id', optional: true

  validates_presence_of :name
end
