class BookmarksController < ApplicationController

  def new
    # need to find the list the bookmark belongs to
    # via the url params :list_id
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    # to specifiy the list the bookmark belongs to we need to set .list = to @list
    @bookmark.list = @list
    if @bookmark.save
      # return to the list the bookmark belongs to
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    # strong params for bookmarks
    # need to specify movie_id as that's what is in the bookmarks not movie
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
