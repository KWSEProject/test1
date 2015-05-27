class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :main_title
      t.text :description
      #t.string :size
      t.decimal :stock
      #t.string :color


      t.string :main_image_url		# 메인 이미지

      t.string :image_url1		# 모든 색상 이미지

      t.string :image_url2		# 착용 이미지1
      t.string :image_url3		# 착용 이미지2
      t.string :image_url4		# 착용 이미지3
      t.string :image_url5		# 착용 이미지4		

      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
	
    execute "ALTER TABLE tops auto_increment=1;"
  end
end
