class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/book'
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_paramas
    paramas.require(:book).permit(:title, :body)
  end
end
