class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :location
      t.text :description
      t.string :photo_url
      t.float :rate

      t.timestamps
    end
  end
end
