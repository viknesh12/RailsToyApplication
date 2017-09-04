class User < ApplicationRecord
    validates :name , presence: true, length: {maximum: 50}, uniqueness: true
    validates :email , presence: true  
    has_secure_password

    attr_accessor :remember_token

    def User.digest(stringn) 
    	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost  
    	BCrypt::Password.create(stringn , cost: cost) 	
    end

    def User.new_token
    	SecureRandom.urlsafe_base64
    end

    def remember
    	self.remember_token = User.new_token
    	update_attribute(:remember_digest , User.digest(remember_token))
    end	

    def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest) == remember_token
    end     
end
