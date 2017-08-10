class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, note_id: params[:note_id])
    @likes = Like.where(where(note_id: params[:note_id]))
    @notes = Note.all
    @note = Note.find(params[:note_id])
  end

  def destory
    like = Like.find_by(user_id: current_user.id, note_id: params[:note_id])
    like.destory
    @likes = Like.where(note_id: params[:note_id])
    @notes = Note.all
  end
end
