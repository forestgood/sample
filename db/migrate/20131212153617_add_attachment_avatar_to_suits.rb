class AddAttachmentAvatarToSuits < ActiveRecord::Migration
  def self.up
    change_table :suits do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :suits, :avatar
  end
end
