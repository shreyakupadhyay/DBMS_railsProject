class AddUserType < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :user_type , :string
  end

end
