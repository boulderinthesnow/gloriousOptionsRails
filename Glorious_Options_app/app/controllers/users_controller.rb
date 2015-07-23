class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	if @user.save
  		redirect_to users_path

  	else
  		render :new
  	end

  end

  def show
  end

  def edit
  	@user = User.find_by(id: params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	if @user.save
  		redirect_to users_path
  	else
  		render :edit
  	end

  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to users_path
  end

  private

  def user_params
  	params.require(:user).permit(
  	  		:username,
  	  		:email,
  	  		:password
  	  		)
  end
end
