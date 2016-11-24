class IpassetsController < ApplicationController
  def index
    @ipasset = Ipasset.all
  end


  def show
    @ipasset = Ipasset.find(params[:id])
  end


  def new 
  end

  def edit
    @ipasset = Ipasset.find(params[:id])
  end

  def create
  	@ipasset = Ipasset.new(ipasset_params)
  	@ipasset.save
  	redirect_to @ipasset
  end

  def update
    @ipasset = Ipasset.find(params[:id])
    if @ipasset.update(ipasset_params)
      redirect_to @ipasset
    else
      render 'edit'
    end
  end

  private

  def ipasset_params
    params.require(:ipasset).permit(:title, :description, :attachment, :filename , stakeholders_attributes: [:stakeholderid, :stakespercent])
  end
end
