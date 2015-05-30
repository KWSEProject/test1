class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name
      t.string :password_digest
<<<<<<< HEAD
      t.text   :address
     
=======
      t.text :address

>>>>>>> Lee
      t.timestamps null: false
    end
  end
end
