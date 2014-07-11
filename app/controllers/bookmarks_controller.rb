class BookmarksController < ApplicationController
  
  # def index
  #   @bookmark = Bookmark.new
  # end

  # if params[:title]
  #     @bookmark_groups = current_user.bookmarks.where(title: params[:title]).group_by { |b| b.title }
  #   else
  #     @bookmark_groups = current_user.bookmarks.group_by { |b| b.title }
  #   end

  #   if params[:title]
  #     @liked_bookmark_groups = current_user.liked_bookmarks.where(title: params[:title]).group_by { |b| b.title }
  #   else
  #     @liked_bookmark_groups = current_user.liked_bookmarks.group_by { |b| b.title }
  #   end

  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   url = @bookmark.url
  #   authorize @bookmark

  #   if @bookmark.destroy
  #     flash[:notice] = "\"#{url}\" was deleted successfully."
  #     redirect_to bookmarks_path
  #   else
  #     flash[:error] = "There was an error deleting the bookmark."
  #     render "bookmarks/index"
  #   end
  # end

end
