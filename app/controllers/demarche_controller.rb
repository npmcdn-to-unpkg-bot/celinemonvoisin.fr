class DemarcheController < ApplicationController
  def index
    #@projects = Project.find_all_by_visible(true)
    @demarche = Demarche.find_all_by_visible(true)
    @demarche_current = true
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

end
