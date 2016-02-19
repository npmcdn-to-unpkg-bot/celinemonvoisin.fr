class Image < ActiveRecord::Base
  
  Paperclip.interpolates :project_name do |attachment, style|
    attachment.instance.project.title
  end
  
  belongs_to :project
  attr_accessible :uri, :name, :visible_in_project_page, :project_id, :description, :help, :scale, :info
  has_attached_file :uri, :url => "/images/projets/:project_name/:filename", :path => ":rails_root/public/images/projets/:project_name/:filename"
end
