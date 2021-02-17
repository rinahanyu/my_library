class LendingsController < ApplicationController
  def index
  end

  def new
    @lending = Lending.new
    @book = Book.find(params[:book_id])
    @reservation = Reservation.where(book_id: @book.id)
  end

  def create
  end

  def index
  end
end
