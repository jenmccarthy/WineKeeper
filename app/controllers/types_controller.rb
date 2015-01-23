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

  private

  def type_params
    params.require(:type).permit(:name)

end
