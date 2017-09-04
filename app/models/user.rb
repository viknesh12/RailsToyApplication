class User < ApplicationRecord
    validates :name , presence: true, length: {maximum: 50}, uniqueness: true
    validates :email , presence: true  
    has_secure_password
end
