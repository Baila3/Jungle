require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'should not save user that has different password confirmation' do
      user = User.new(name:"Bob", email:'bob@email.com', password: '12345', password_confirmation: '98765')
      expect(user).to_not be_valid
    end

    it 'should  save user that have the same password and password confirmation' do
      user = User.new(name:"Bob", email:'bob@email.com', password: '12345', password_confirmation: '12345')
      expect(user).to be_valid
    end

    it 'should not save user with identical email but different casing as user in database' do
      @user1 = User.new(name:"Bob", email:'bob@email.com', password: '12345', password_confirmation: '12345')
      @user1.save
      @user2 = User.new(name:"Lou", email:'BOB@EMAIL.com', password: '98765', password_confirmation: '98765')
      expect(@user2).to_not be_valid
    end

    it 'should not save user without Email, first name, or last name' do
      user = User.new(name: nil, email: nil)
      expect(user).to_not be_valid
    end

    it 'should not save user without password shorter than 1 characters' do
      user = User.new(name:"Bob", email:'bob@email.com', password: '', password_confirmation: '')
      expect(user).to_not be_valid
    end

  end

  describe '.authenticate_with_credentials' do
    before do
      @user1 = User.new(name:"Bob", email:'bob@email.com', password: '12345', password_confirmation: '12345')
      @user1.save
    end

    it 'should allow users to login if they have extra spaces around their email address' do
    @user1 = User.authenticate_with_credentials(email:" bob@email.com ", password: '12345')
     expect(@user1).to be_valid
   end

   it 'should allow users to login if they put capitals in their email address' do
    @user1 = User.authenticate_with_credentials(email:" bOB@emAil.com ", password: '12345')
    expect( @user1).to be_valid
  end
 end
end