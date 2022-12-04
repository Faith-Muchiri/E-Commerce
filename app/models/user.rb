class User < ApplicationRecord
    has_one :cart
    has_many :reviews
    validates :name, :username, :email, :phone_number, presence: true, uniqueness: true
    validates :address, presence: true
end
