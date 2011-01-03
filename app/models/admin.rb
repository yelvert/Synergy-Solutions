class Admin < ActiveRecord::Base
  devise :database_authenticatable, :validatable
  
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me
end
