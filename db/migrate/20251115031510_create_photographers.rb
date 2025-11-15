class CreatePhotographers < ActiveRecord::Migration[7.2]
  def change
    create_table :photographers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :nationality

      t.timestamps
    end
  end
end
