class CreateIpassets < ActiveRecord::Migration[5.0]  
  def change
    create_table :ipassets do |t|
      t.string :title
      t.text :description
      t.string :filename
      t.binary :binary_data
  	  t.integer :status , :default => 0

      t.timestamps
    end
  end
end
