class CreateActus < ActiveRecord::Migration
  def change
    create_table :actus do |t|
      t.references :image
      t.text :texte_principal
      t.references :project

      t.timestamps
    end
    add_index :actus, :project_id
  end
end
