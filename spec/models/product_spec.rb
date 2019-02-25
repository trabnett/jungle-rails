require 'rails_helper'

RSpec.describe Product, type: :model do
  category = Category.new(name: "electronics")
  product = Product.new(category_id: category.id, name: "widget", price: 5, quantity: 0, category_id: 3)

  describe 'Validations' do
    it "is not valid without a name" do
      product.name = nil
      expect(product).to_not be_valid
    end
    it "is not valid without a price" do
      product = Product.new(price: nil)
      expect(product).to_not be_valid
    end
    it "is not valid without a quantity" do
      product = Product.new(quantity: nil)
      expect(product).to_not be_valid
    end
    it "is not valid without a category" do
      product = Product.new(category_id: nil)
      expect(product).to_not be_valid
    end
    it "should store errors in .errors.full_messages" do
      product = Product.new(name: nil)
      expect(product.errors.full_messages[0]) == "Name can't be blank"
    end
  end
end
