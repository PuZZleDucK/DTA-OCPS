class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.references :item, foreign_key: true
      t.integer :quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
