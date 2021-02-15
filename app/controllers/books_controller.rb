class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render "index"
    end
  end

  private

  def book_params
    params.require(:book).permit(:library_id, :genre_id, :title, :title_kana, :author, :publisher, :published_on, :status, :book_image)
  end
end
