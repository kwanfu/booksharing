class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :country
      t.integer :rating

      t.timestamps
    end
  end
end
