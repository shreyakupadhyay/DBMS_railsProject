class StatusValue0Users < ActiveRecord::Migration[5.0]
  def change
  	add_column :users , :status , :integer , :default => 0
  end
end
