class UsersController < ApplicationController

  # def index
  #   @user = current_user
  #   @notes = @user.notes.order("created_at DESC")
  # end

  def new
  end


  def show
     @notes = current_user.notes
    
   end

  def edit
  end

  def update
  end



end
