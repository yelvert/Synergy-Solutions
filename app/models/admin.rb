class Admin < ActiveRecord::Base
  devise :database_authenticatable, :validatable
  
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me
  
  protected
    def password_required?
      new_record? || destroyed? || password.present? || password_confirmation.present?
    end
end
