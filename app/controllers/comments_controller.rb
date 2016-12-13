class CommentsController < ApplicationController
def create
	@post = Post.find(params[:id])
	@comment = @post.comments.create(params[:comment].permit[:name, :body])

	redirent_to post_path(@post)
end




end
