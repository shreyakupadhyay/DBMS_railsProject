class IpassetsController < ApplicationController
  before_action :login_required

  def index
    @ipasset = current_user.ipassets.all
  end


  def show
    @ipasset = Ipasset.find(params[:id])
  end


  def new 
    @ipasset = Ipasset.new
    @ipasset.stakeholders.build(stakeholderid: current_user.id)
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
