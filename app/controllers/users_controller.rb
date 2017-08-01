class UsersController < ApplicationController

  # def index
  #   @user = current_user
  #   @notes = @user.notes.order("created_at DESC")
  # end

  def new
  end


  def show
     @user = current_user
     @notes = current_user.notes.order("created_at DESC")
   end

  def edit
    @user = current_user
  end

  def update
     current_user.update(user_params)
       redirect_to user_path
    # else
    #   render :show_url
    # end
  end

  private
  def user_params
    params.require(:user).permit(:headerimage, :image, :nickname, :introduction)
  end
end
