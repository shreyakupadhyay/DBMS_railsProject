class AddStatusDefault < ActiveRecord::Migration[5.0]
  def change
  	add_column :ipassets, :status, :integer , :default => 0
  end
end
