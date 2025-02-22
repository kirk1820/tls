class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :surname
      t.date :dob
      t.string :email, null: false, unique: true
      t.string :password_digest
      t.timestamps
    end
  end
end
