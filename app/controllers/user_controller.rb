class UserController < ApplicationController
	before_filter :authenticate_user!

  def manage
  	@groups = Group.all
  	@user = current_user
  	@users = User.where('id != ?', @user.id)
  end

  def update
  	user = current_user
  	user.group_ids = params[:groups]
  	if user.save
  		redirect_to :back, :notice => "updated."
  	else
  		redirect_to :back, :error => "something went wrong."
  	end
  end

  def invite
  	begin
  		user = User.find params[:user_id]
  		assigner = current_user
  		params[:groups].each do |gr|
  			Group.assign_to_group(Group.find(gr), user, assigner)
  		end
  		redirect_to :back, :notice => "updated."
  	rescue
  		redirect_to :back, :error => "something went wrong."  		
  	end
  end
end
