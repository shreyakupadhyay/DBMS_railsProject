class AddUuidIpIdUserips < ActiveRecord::Migration[5.0]
  def change
  	add_column :userips , :user_id , :string
  	add_column :userips , :ipasset_id ,:string
  end
end
