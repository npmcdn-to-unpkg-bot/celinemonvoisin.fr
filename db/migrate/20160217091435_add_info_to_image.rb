class AddInfoToImage < ActiveRecord::Migration
  def change
    add_column :images, :info, :text
  end
end
