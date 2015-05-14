class CreateLineItems < ActiveRecord::Migration
  def change
  	add_column :line_items, :quantity, :integer, default:1
    create_table :line_items do |t|
      t.references :product, index: true
      t.belongs_to :cart, index: true

      t.timestamps null: false
    end
    add_foreign_key :line_items, :products
    add_foreign_key :line_items, :carts
  end
end
