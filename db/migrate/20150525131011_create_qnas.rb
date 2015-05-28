class CreateQnas < ActiveRecord::Migration
  def change
    create_table :qnas do |t|
	  t.string :name
	  t.string :question

      t.timestamps null: false
    end
  end
end
