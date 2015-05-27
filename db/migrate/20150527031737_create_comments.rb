class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
		t.integer :qna_id
		t.string  :name
		t.string  :question

      t.timestamps null: false
    end
  end
end
