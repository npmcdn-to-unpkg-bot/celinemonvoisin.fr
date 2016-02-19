class AddImageDisplay2ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :display_img_2, :string
  end
end
