class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to root_path, notice: 'Book was successfully created!'
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :category, :description, :country, :photo, :rating)
  end
end
