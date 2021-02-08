class LibrariesController < ApplicationController
  def index
  end

  def new
    @library = Library.new
  end
  
  def create
    @library = Library.new(library_params)
    if @library.save
      redirect_to libraries_index_path
    else
      render "new"
    end
  end
end
