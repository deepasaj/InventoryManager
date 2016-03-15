class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :variant

      t.timestamps null: false
    end
  end
end
