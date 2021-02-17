class LendingsController < ApplicationController
  def index
  end

  def new
    @lending = Lending.new
    @book = Book.find(params[:])
  end
  
  def create
  end
  
  def index
  end
end
