require 'rails_helper'

RSpec.describe User, type: :model do
  

  describe 'Validations' do
    it "is not valid without a email confirmation" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy")
      user.password_confirmation = 'bobothy'
      expect(user.save).to be false
    end
    it "is valid with an email confirmation" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy")
      user.password_confirmation = "timothy"
      expect(user.save).to be true
    end
    it "should only save unique emails" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy")
      user.password_confirmation = 'timothy'
      user.save
      user2 = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "tim2")
      user2.password_confirmation = "tim2"
      user2.save
      expect(user2.errors.messages[:email]).to include("Email already registered")
    end
    it "should only save unique, non-casesensitive emails" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy")
      user.password_confirmation = 'timothy'
      user.save
      user2 = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy2")
      user2.password_confirmation = "timothy2"
      user2.save
      expect(user2.errors.messages[:email]).to include("Email already registered")
    end
    it "is not valid without a first name" do
      user = User.new(last_name: "tim", email: "tim@tim.com", password: "timothy", password_confirmation: "timothy")
      expect(user.save).to be false
    end
    it "is not valid without a last name" do
      user = User.new(first_name: "tim", email: "tim@tim.com", password: "timothy", password_confirmation: "timothy")
      expect(user.save).to be false
    end
    it "is not valid without an email" do
      user = User.new(last_name: "tim", first_name: "tim", password: "timothy", password_confirmation: "timothy")
      expect(user.save).to be false
    end
    it "should fail if the password has less than 6 characters" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "tim", password_confirmation: "tim")
      expect(user.save).to be false
    end
    it "should pass if the password has less than 6 characters" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy1111", password_confirmation: "timothy1111")
      expect(user.save).to be true
    end
  end

  describe ".authenticate_with_credentials" do
    it "should fail if the password doesn't match the users password" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy1111", password_confirmation: "timothy1111")
      user.save
      expect(User.authenticate_with_credentials("tim@tim.com", "aaaaaaaaaaa")).to eq(nil)
    end
    it "should pass if the password matchs the users password" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy1111", password_confirmation: "timothy1111")
      user.save
      expect(User.authenticate_with_credentials("tim@tim.com", "timothy1111")).to eq(user)
    end
    it "should pass if it has the correct email but has spaces on either end" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy1111", password_confirmation: "timothy1111")
      user.save
      expect(User.authenticate_with_credentials(" tim@tim.com  ", "timothy1111")).to eq(user)
    end
    it "should pass if it has the correct email non case sensitive" do
      user = User.new(first_name: "tim", last_name: "tim", email: "tim@tim.com", password: "timothy1111", password_confirmation: "timothy1111")
      user.save
      expect(User.authenticate_with_credentials("tIM@tim.cOm", "timothy1111")).to eq(user)
    end

  end

end
