class CreateAccessories < ActiveRecord::Migration
    def change
    create_table :accessories do |t|
      t.string :main_title
      t.text :description
      t.decimal :stock
      t.string :main_image_url		# 메인 이미지
      t.string :image_url1		# 모든 색상 이미지
      t.string :size
      t.string :color
      t.decimal:buy_count
      t.decimal:product_id

      t.decimal :price

      t.timestamps null: false
    end
  end
end

