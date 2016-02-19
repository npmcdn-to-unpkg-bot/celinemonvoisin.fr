class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :description
      t.string :help
      t.references :project

      t.timestamps
    end
    add_index :images, :project_id
  end
end
