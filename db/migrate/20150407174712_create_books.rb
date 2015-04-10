class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :manufacturer
      t.string :category
      t.string :image
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active

      t.timestamps null: false
    end
  end
end
