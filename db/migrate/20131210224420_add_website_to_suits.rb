class AddWebsiteToSuits < ActiveRecord::Migration
  def change
    add_column :suits, :website, :string
  end
end
