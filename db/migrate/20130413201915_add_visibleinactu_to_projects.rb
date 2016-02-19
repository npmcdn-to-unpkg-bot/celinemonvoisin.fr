class AddVisibleinactuToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :visible_in_actu, :boolean
  end
end
