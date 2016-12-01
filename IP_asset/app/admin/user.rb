ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  column :email
  column :status
  column "Confirming Users" do |user|
    link_to "Confirm", url_for(:action => :confirm, :id => user.id), :method => :get
  end
   column "Enabling IP Committee" do |user|
    link_to "Enable", url_for(:action => :enable, :id => user.id), :method => :get
  end

  column "Removal" do |user|
  	link_to "Remove" , url_for(:action => :disable, :id => user.id), :method => :get
  end
  column :created_at
  column :updated_at
  column :ipcommittee_member
  actions
end

member_action :enable, :method => :get do
  faculty = User.find(params[:id])
  ip_comm = User.where(ipcommittee_member: 1).count(:ipcommittee_member)

  if(ip_comm > 3)
    flash[:notice] = "IP Committee is full!!"
  else
    flash[:notice] = "IP Committee has been enabled!"
    faculty.ipcommittee_member = 1
    faculty.save
  end
  redirect_to :action => :index
end
member_action :confirm, :method => :get do
  faculty = User.find(params[:id])
  faculty.status = 1
  faculty.save
  redirect_to :action => :index
end
  scope :confirmed_users do |users|
    users.where('ipcommittee_member = ?', 1)
  end
  scope :unconfirmed_users do |users|
    users.where('ipcommittee_member = ?', 0)
  end

member_action :disable, :method => :get do
  faculty = User.find(params[:id])
  faculty.ipcommittee_member = 0
  faculty.save
  redirect_to :action => :index
  end


permit_params :ipcommittee_member, :user_id

end

