class AddTexteToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :texte, :text
  end
end
