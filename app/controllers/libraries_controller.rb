class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def new
    @library = Library.new
  end

  def create
    @library = Library.new(library_params)
    if @library.save
      redirect_to libraries_path
    else
      render "new"
    end
  end

  private

  def library_params
    params.require(:library).permit(:name, :email, :postal_code, :address, :telphone_number)
  end
end
