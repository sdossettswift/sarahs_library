class AuthorsController < ApplicationController
  before_action do

    @current_user = User.find_by id: session[:user_id]
    if @current_user.nil?
      redirect_to sign_in_path
    end
  end

  def index
    @authors = Author.all
  end

  def show
    @author= Author.find_by id: params[:id]
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]
    @author.photo_url = params[:author][:photo_url]

    if @author.save
      redirect_to root_path, notice: "Author Added!"
    else
      render :new
    end
  end

  def edit
    @author = Author.find_by id: params[:id]
  end

  def update
    @author = Author.find_by id: params[:id]
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]
    @author.photo_url = params[:author][:photo_url]

    if @author.save
      redirect_to root_path, notice: "Author Added!"
    else
      render :new
    end
  end

  def delete
    @author = Author.find_by id: params[:id]
    @author.destroy
    redirect_to root_path, notice: "Author Burned!"
  end

end
