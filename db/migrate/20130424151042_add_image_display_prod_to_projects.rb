class AddImageDisplayProdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :display_prod, :string
  end
end
