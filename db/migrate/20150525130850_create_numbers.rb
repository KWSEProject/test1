class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
	  t.string :name
	  t.string :question

      t.timestamps null: false
    end
  end
end
