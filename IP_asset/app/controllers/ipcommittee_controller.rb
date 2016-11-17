class IpcommitteeController < ApplicationController
	def index
		@ipasset = Ipasset.where(status: 0)
	end

	def show
		#@ipasset = Ipasset.find(params[:id])
		@ipasset = Ipasset.where(status: 0)
	end
		
	def updatestatus
	  @ipasset = Ipasset.find_by_id(params[:id])
	  @ipasset.status = params[:status]
	  @ipasset.save
  	  render :nothing => true
  	end
end
