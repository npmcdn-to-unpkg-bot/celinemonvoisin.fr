class AddInfoToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :info, :text
  end
end
