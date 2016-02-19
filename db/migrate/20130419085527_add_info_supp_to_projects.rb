class AddInfoSuppToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :info_supp, :text
  end
end
