class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.date :dob
      t.string :email
      t.string :payment_method

      t.timestamps null: false
    end
  end
end
