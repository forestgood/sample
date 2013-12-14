class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :name
      t.string :photo
      t.integer :age
      t.string :location
      t.text :story

      t.timestamps
    end
  end
end
