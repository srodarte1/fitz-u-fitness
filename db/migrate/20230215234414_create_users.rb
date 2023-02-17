class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :gender
      t.integer :age
      t.float :height
      t.float :weight
      t.string :activity_level
      t.integer :tdee
      t.float :water_intake

      t.timestamps
    end
  end
end
