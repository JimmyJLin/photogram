class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.save
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
    @article = Article.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end

end
