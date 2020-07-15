class PostsController < ApplicationController

  # renders post listing/index page
  def index
    @posts = Post.all.order("created_at DESC")
  end

  # renders the new post page
  def new
    @post = Post.new
  end

  # inserts the new post
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  # renders show post page
  def show
    @post = Post.find(params[:id])
  end

  # renders the edit page
  def edit
    @post = Post.find(params[:id])
  end

  # updates the actual record
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  # handles delete hit
  def destroy
    @post = Post.find(params[:id])

    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :desc)
  end
end
