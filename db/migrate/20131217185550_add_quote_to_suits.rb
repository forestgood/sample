class AddQuoteToSuits < ActiveRecord::Migration
  def change
    add_column :suits, :quote, :text
  end
end
