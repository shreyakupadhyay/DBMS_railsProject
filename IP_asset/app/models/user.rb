class User < ApplicationRecord
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable ,:registerable
  has_many :stakeholders, foreign_key: 'stakeholderid', inverse_of: :user
  has_many :ipassets , through: :stakeholders 
  
end
