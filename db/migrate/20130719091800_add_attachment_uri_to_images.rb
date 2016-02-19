class AddAttachmentUriToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :uri
    end
  end

  def self.down
    drop_attached_file :images, :uri
  end
end
