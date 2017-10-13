class CommentsController < ApplicationController

def create
    @progress = Progress.find(params[:progress_id])
    @comment = Comment.new(comment_params)
    @comment.progress = @progress
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.js
    end
 end
end



private

 def comment_params
  params.require(:comment).permit(:title, :body)
 end

end