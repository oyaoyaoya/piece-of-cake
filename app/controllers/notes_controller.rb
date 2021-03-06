class NotesController < ApplicationController

  def index
    # @likes = Like.where(like_id: params[:like_id])
    @notes = Note.order("created_at DESC")
  end

  def new
    @note = Note.new
  end

  def create
  @note = current_user.notes.new(note_params)
    if @note.save
      redirect_to root_path, notice: "noteを作成しました"
    else
      flash.now[:alert] = "タイトルを入力してください"
      render = "new"
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def purchase
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(currency: 'jpy', amount: 1000, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
  end

 def recommend
  # @notes = Note.order("created_at DESC")
  @notes = Note.where(category: 0)
 end

 def manga
 end

 def column
 end

 def novel
 end

 def photo
 end

 def music
 end

  private
  def note_params
    params.require(:note).permit(:image, :eyecatchimage, :title, :body, :fee).merge(user_id: current_user.id)
  end

end
