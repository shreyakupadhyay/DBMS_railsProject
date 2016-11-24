class Stakeholder < ApplicationRecord
	belongs_to :user , :foreign_key => "stakeholderid"
	belongs_to :ipasset, :foreign_key => "ipassetid"
end
