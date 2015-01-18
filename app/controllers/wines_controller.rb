class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.create(wine_params)
    if @wine.valid?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:id])
    if @wine.update_attributes(wine_params)
      redirect_to wine_path(@wine)
    else
      render 'edit'
    end
  end

  def show
    @wine = Wine.find(params[:id])
  end


private
  def wine_params
    params.require(:wine).permit(:name, :type_id, :year, :region, :alcohol_content, :tasting_notes)
  end

end
