class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.belongs_to :apparel_types, index: true
      t.belongs_to :sizes, index: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
