class User < ApplicationRecord
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable ,:registerable
  has_many :stakeholders, foreign_key: 'stakeholderid', inverse_of: :user
  has_many :ipassets , through: :stakeholders 

  def active_for_authentication?
        # Uncomment the below debug statement to view the properties of the returned self model values.
        # logger.debug self.to_yaml

        super && status?
  end
  
end
