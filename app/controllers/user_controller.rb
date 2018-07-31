class UserController < ApplicationController
	skip_before_action :verify_authenticity_token

  def new
  	@user = User.new
  end


  def create
  	@user = User.create(username: params[:username], email: params[:email], bio: params[:bio])
  	redirect_to '/'

    #Ligne a decomenter pour faire fonctioner le 3éme formulaires

  	#@user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
  	#redirect_to '/'
  end

  def post
  end
end
