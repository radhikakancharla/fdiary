class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
      t.date :date
      t.string :category
      t.string :name
      t.integer :servings
      t.integer :calories
      t.timestamps 
    end
  end
end
