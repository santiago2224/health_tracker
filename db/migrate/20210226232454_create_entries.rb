class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbohydrates
      t.integer :fats
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
