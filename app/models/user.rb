class User < ApplicationRecord
    has_one :cart
    has_many :reviews
    has_many :products, through: :reviews

    validates :email, :password, presence: true, uniqueness: true

    has_secure_password
end
