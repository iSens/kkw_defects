class CreateDefectedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :defected_items do |t|
      t.string :company
      t.string :full_name
      t.string :description
      t.string :status
      t.integer :total

      t.timestamps
    end
  end
end
