class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :unit_price
      t.integer :special_qty
      t.integer :special_price

      t.timestamps
    end
  end
end
