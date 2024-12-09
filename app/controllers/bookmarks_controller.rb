class BookmarksController < ApplicationController
  before_action :set_book, only: [:create]

  def index
    @user = current_user
    @bookmarks = Bookmark.all.where(user: current_user)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.book = @book
    @bookmark.user = current_user

    if @bookmark.save
      redirect_to user_bookmarks_path, notice: "Bookmark created successfully."
    else
      render user_bookmarks_path, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to user_bookmarks_path, status: :see_other
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:book_id, :user_id)
  end
end
