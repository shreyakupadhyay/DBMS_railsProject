class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :stakeholders, foreign_key: 'stakeholderid', inverse_of: :user
  has_many :ipassets , through: :stakeholders 
  
end
