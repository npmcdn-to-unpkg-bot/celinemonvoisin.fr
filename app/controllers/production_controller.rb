class ProductionController < ApplicationController
  def index
    @projects = Project.find_all_by_visible(true, :order => "date DESC")
    @production = true
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

end
