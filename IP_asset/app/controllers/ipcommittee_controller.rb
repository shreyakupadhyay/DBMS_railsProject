class IpcommitteeController < ApplicationController
  	before_action :login_required

	def index
		@ipasset = Ipasset.where(status: 0)
	end

	def show
		@ipasset = Ipasset.find(params[:id])
		if @ipasset.status != 0
		end

	end
		
	def updatestatus
	  @ipasset = Ipasset.find_by_id(params[:ipasset][:id])
	  logger.info("shreyak")
	  logger.info()
	  logger.info("harika")
	  @ipasset.status = params[:ipasset][:status].to_i
	  @ipasset.save
  	  render :nothing => true
  	end

  	private

  	def ipasset_params
  		params.require(:ipasset).permit(:status)
	end
end
