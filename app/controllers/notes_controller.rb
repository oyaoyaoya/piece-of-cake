class NotesController < ApplicationController

  def index

  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new

  end


end
