class ChangeColumn < ActiveRecord::Migration
  def change
  change_column :microposts, :content, :text, :limit => nil
  end
end
