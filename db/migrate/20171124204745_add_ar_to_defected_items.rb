class AddArToDefectedItems < ActiveRecord::Migration[5.1]
  def change
    add_column :defected_items, :ar, :string
  end
end
