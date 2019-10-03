class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    Comic.create(comic_params)
  end

  private

  def comic_params
    params.require(:comic).permit(:panel_description)
    redirect_to root_path
  end
end
