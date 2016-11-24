class Ipasset < ApplicationRecord

	
mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
has_many :stakeholders, foreign_key: 'ipassetid', inverse_of: :ipasset
has_many :users , through: :stakeholders
accepts_nested_attributes_for :stakeholders
accepts_nested_attributes_for :users

end
