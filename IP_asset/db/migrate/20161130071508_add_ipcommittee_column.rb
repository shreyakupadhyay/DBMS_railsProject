class AddIpcommitteeColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :ipcommittee_member , :int
  end
end
