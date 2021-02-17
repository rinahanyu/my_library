class LendingsController < ApplicationController
  def index
  end

  def new
    @lending = Lending.new
    @book = Book.find(params[:book_id])
    # @reservations = Reservation.find(book_id: @book.id)
  end
  
  def create
  end
  
  def index
  end
end
