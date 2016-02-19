class AddElementsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :date, :string
    add_column :projects, :display_img, :string
    add_column :projects, :adresse, :string
  end
end
