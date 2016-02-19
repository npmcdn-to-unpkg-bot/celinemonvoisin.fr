class PersoController < ApplicationController
  def pretty
    @projects = Project.find_all_by_visible(true, :order => "date DESC")
    @images = Image.all.shuffle
    respond_to do |format|
      format.html # pretty.html.erb
      format.json { render json: @projects }
    end
  end

end
