class BooksController < ApplicationController
  before_action except: :show do
      if @current_user.nil?
        redirect_to sign_in_path, alert: "Please Sign In"
      end
    end


  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.author = params[:book][:author]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]

    if @book.save
      redirect_to root_path, notice: "Book Added!"
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.title = params[:book][:title]
    @book.author = params[:book][:author]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]

    if @book.save
      redirect_to root_path, notice: "Book Added!"
    else
      render :new
    end
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to root_path, notice: "Book Burned!"
  end

end
