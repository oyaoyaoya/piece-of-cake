class NotesController < ApplicationController

  def index
    @user = current_user
  end

  def new
    @note = Note.new
  end

  def create
  @note = current_user.notes.new(note_params)
    if @note.save
      redirect_to root_path
    else
      flash.now[:alert] = "メッセージを入力してください"
      render = "new"
    end
  end

  def pay
    Payjp.api_key = 'sk_test_393becdb0fa54e3a64c80301'
    charge = Payjp::Charge.create(
    amount: "100",
    card: params['payjp-token'],
    currency: 'jpy',
      )
  end

  private
  def note_params
    params.require(:note).permit(:image, :eyecatchimage, :title, :body, :fee).merge(user_id: current_user.id)
  end

end
