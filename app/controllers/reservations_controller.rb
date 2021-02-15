class ReservationsController < ApplicationController
  def new
    @reservatioin = Reservation.new
    @book = Book.find(params[:book_id])
  end

  def show
  end
end
