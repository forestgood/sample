class AddIndexToSuitsEmail < ActiveRecord::Migration
  def change
  	add_index :suits, :email, unique: true
  end
end
