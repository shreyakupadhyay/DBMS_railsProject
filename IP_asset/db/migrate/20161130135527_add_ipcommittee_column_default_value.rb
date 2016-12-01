class AddIpcommitteeColumnDefaultValue < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :ipcommittee_member , :integer , :default => 0 
  end
end
