class AddEmailToSuits < ActiveRecord::Migration
  def change
    add_column :suits, :email, :string
  end
end
