class User < ActiveRecord::Base

    has_secure_password
    has_many :ratings
    validates :email, uniqueness: {message: "Email already registered"}
    
end
