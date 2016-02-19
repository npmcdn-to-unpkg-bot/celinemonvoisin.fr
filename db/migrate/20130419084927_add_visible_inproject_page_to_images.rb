class AddVisibleInprojectPageToImages < ActiveRecord::Migration
  def change
    add_column :images, :visible_in_project_page, :boolean
  end
end
