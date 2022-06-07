require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should save a product with all four fields set' do
      @product = Product.new(name:"Bob", email:'bob@emaiil.com', password: 12345 password_confirmation: 98765)
      expect(:password).not_to eql(:password_confirmation)
  end
  end
end