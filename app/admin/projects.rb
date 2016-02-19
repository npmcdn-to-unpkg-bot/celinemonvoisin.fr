ActiveAdmin.register Project do
  form do |f|
    f.inputs do
      f.inputs "General" do
        f.input :title, :label => "Titre" 
        f.input :description
        f.input :date
        f.input :adresse
        f.input :visible_in_actu, :label => "Visible dans la page d'actualite"  
      end
      
      f.inputs "Page production" do
        f.input :visible, :label => "Visible dans la page de production" 
        f.input :display_prod, :label => "Image page production"
      end
      f.inputs "Page projet" do
        f.input :display_img, :label => "Image colonne gauche 1"
        f.input :display_img_2, :label => "Image colonne gauche 2"
        f.input :info, as: :html_editor
        f.input :texte, as: :html_editor
        f.input :info_supp, as: :html_editor
      end
    end

    f.buttons
  end
  
  index do
    column :title
    column :visible
    column :visible_in_actu
    default_actions
  end
  
  show do |prj|
    attributes_table do
      row :title
      row :display_img do
        image_tag(prj.display_img)
      end
    end
    active_admin_comments
  end
end
