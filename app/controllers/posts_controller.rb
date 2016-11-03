class PostsController < ApplicationController
  def create
    @post = Post.new title: params[:title], content: params[:content]

    if @post.save
      redirect_to root_path
    else
      @errors = @post.errors.full_messages
      @posts = Post.all
    end
  end
end
