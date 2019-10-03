class PanelsController < ApplicationController
  def create
    @comic = Comic.find(params[:comic_id])
    @comic.panels.create(panel_params)
    redirect_to root_path
  end


  private

  def panel_params
    params.require(:panel).permit(:description)
  end
end
