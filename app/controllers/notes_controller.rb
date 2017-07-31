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

  private
  def note_params
    params.require(:note).permit(:image, :eyecatchimage, :title, :body).merge(user_id: current_user.id)
  end

end
