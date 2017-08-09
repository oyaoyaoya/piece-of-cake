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

   def purchase
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(currency: 'jpy', amount: 1000, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
  end

  private
  def user_params
    params.require(:user).permit(:headerImage, :image, :nickname, :introduction)
  end
end
