class AddVisibleToActus < ActiveRecord::Migration
  def change
    add_column :actus, :visible, :boolean
  end
end
