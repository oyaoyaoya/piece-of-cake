class UsersController < ApplicationController

  def index
    @user = User.new
    # find (params[:user_id])
    @notes = Note.order('id DESC')
  end

  def new
  end

  def edit
  end

  def update
  end
end
