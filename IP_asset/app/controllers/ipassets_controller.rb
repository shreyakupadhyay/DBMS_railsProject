class IpassetsController < ApplicationController
  def new 
  end

  def create
  	@ipasset = Ipasset.new(ipasset_params)
  	@ipasset.save
  	redirect_to @ipasset
  end

  private

  def ipasset_params
    params.require(:ipasset).permit(:title, :description, :binary_data, :filename)
  end
end
