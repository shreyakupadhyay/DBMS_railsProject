class AddAttachmentToIpassets < ActiveRecord::Migration[5.0]
  def change
    add_column :ipassets, :attachment, :string
  end
end
