class User < ApplicationRecord
  before_validation :downcase_email
  validates :email, uniqueness: true
  has_secure_password
  
  def self.authenticate_with_credentials(email:, password:)
    @user = User.find_by_email(email.strip.downcase)
    if @user && @user.authenticate(password)
      return @user
    else
      return nil
    end
  end
  
  private
  
  def downcase_email
    self.email = email.downcase if email.present?
  end
end
