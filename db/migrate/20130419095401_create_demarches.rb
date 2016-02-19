class CreateDemarches < ActiveRecord::Migration
  def change
    create_table :demarches do |t|
      t.string :image_principale
      t.text :texte_principal
      t.text :cv
      t.boolean :visible

      t.timestamps
    end
  end
end
