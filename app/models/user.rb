class User < ActiveRecord::Base
    has_many :ratings

    has_secure_password
    validates :password, length: { minimum: 6, maximum: 20 }, on: :create
    validates :email, presence: true, uniqueness: { case_sensitive: false, message: "Email already registered"}
    validates :first_name, presence: true
    validates :last_name, presence: true
    
    def self.authenticate_with_credentials(email, password)
        new_email = email.downcase.strip
        user = User.find_by_email(new_email)
        if user && user.authenticate(password)
            user
        else
            nil
        end
    end

end
