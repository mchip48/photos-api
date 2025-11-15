class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.text :description
      t.string :date_taken
      t.integer :price

      t.timestamps
    end
  end
end
