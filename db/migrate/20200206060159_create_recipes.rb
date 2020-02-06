class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :title
      t.string :recipe
      t.text :image
      t.string :food
      t.timestamps
    end
  end
end
