ActiveAdmin.register Image do
  index do
    column :name
    column :project
    column :scale
    column "image" do |i|
        image_tag(i.uri.url, size: "100x100")
      end
    default_actions
  end
  
  form do |f|
    f.inputs do
        f.input :project
        f.input :name
        f.input :description
        f.input :help
        f.input :scale
        f.input :info, as: :html_editor
        f.input :uri, :as => :file
        f.input :visible_in_project_page
    end
    f.buttons
  end
  
  show do |img|
    attributes_table do
      row :project
      row :name
      row :filename
      row :description
      row :help
      row :scale
      row :info
      row :uri do
        image_tag(img.uri.url)
      end
    end
    active_admin_comments
  end
end
