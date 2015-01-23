class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.create(type_params)
    if @type.valid?
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    if @type.update_attributes(type_params)
      redirect_to type_path(@type)
    else
      render 'edit'
    end
  end

  def show
    @type = Wine.find(params[:id])
  end

  def delete
    @type = Type.find(params[:id])
    @type.destroy
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end

end
