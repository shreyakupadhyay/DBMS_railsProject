class IpcommitteeController < ApplicationController
  	before_action :login_required , :ipcommittee

	def ipcommittee
		@user = current_user
		if(@user.ipcommittee_member == 1)
			flash[:notice] = "IP committee member"
		else
			flash[:notice] = "Not a IP committee member"
			redirect_to(:root)
		end

	end



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
  	  redirect_to(ipcommittee_index_path)
  	end

  	private

  	def ipasset_params
  		params.require(:ipasset).permit(:status)
	end
end
