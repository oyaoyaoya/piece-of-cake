class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, note_id: params[:note_id])
    @likes = Like.where(note_id: params[:note_id])
    @notes = Note.all
    @note = Note.find(params[:note_id])
    respond_to do |format|
      format.js
    end
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, note_id: params[:note_id])
    like.destroy
    @likes = Like.where(note_id: params[:note_id])
    @notes = Note.all
    respond_to do |format|
      format.js
    end
  end
end
