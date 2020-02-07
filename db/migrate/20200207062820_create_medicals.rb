class CreateMedicals < ActiveRecord::Migration[5.2]
  def change
    create_table :medicals do |t|
      t.string :name
      t.string :title
      t.string :text
      t.text :image
      t.text :map
      t.text :site_url
      t.timestamps
    end
  end
end
