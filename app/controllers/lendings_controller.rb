class LendingsController < ApplicationController
  def index
  end

  def new
    @lending = Lending.new
    @book = Book.find(params[:book_id])
    @reservation = Reservation.where(book_id: @book.id)
  end

  def create
    @lending = Lending.new(lending_params)
    @book = Book.find(params[:book_id])
    @lending.book_id = @book.id
    if @lending.save
      redirect_to book_lending_path(@book, @lending)
    else
      render 'new'
    end
  end

  def index
  end

  def show
    @lending = Lending.find(params[:id])
    @book = Book.find(params[:book_id])
    @reservation = Reservation.find_by(book_id: @book.id, user_id: @lending.user)
  end

  private
  def lending_params
    params.require(:lending).permit(:user_id, :reservation_id, :lent_on, :return_date, :returned_on)
  end
end
