class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :users, through: :reviews
  has_many :cartitems
end
