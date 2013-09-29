class ChangeColumnTechContent < ActiveRecord::Migration
  def change
  change_column :microposts, :tech_content, :text, :limit => nil
  end
end
