class ReservationsController < ApplicationController
  def new
    @reservatioin = Reservation.new
    @book = Book.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.book_id = @book.id
    if @reservation.save
      redirect_to book_reservation_path(@reservation, @book)
    else
      render 'new'
    end
  end

  def show
  end

  private

  def reservation_params
    params.require(:reservation).permit(:lending_date, :return_date)
  end
end
