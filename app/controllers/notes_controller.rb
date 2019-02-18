class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(Notes_params)

    if @note.save
      redirect_to notes_path
    else
      render :new
    end

    private
    def Notes_params
      params.require(:page).permit(:title, :author, :body)
    end
    
end
