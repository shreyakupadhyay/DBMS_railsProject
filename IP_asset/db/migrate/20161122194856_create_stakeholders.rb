class CreateStakeholders < ActiveRecord::Migration[5.0]
  def change
    create_table :stakeholders do |t|
    	t.integer :ipassetid
    	t.integer :stakeholderid
    	t.integer :stakespercent

      t.timestamps
    end
  end
end
