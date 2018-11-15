class CreateCigars < ActiveRecord::Migration[5.2]
  def change
    create_table :cigars do |t|
      t.string :brand
      t.string :origin
      t.text :description
      t.integer :size
      t.string :shape
      t.string :binder
      t.string :filler
      t.string :wrapper
      t.decimal :price

      t.timestamps
    end
  end
end
