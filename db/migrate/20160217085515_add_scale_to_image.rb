class AddScaleToImage < ActiveRecord::Migration
  def change
    add_column :images, :scale, :integer
  end
end
