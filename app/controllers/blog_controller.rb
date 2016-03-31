class BlogController < ApplicationController


  def index
    @posts = Post.all
    @posts = @posts.sort_by {|a| a.date}.reverse

  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to blog_path(@post)
  end

  def edit
    @post = Post.find_by(slug: params[:headline])
  end

  def update
    @post = Post.find_by(slug: params[:headline])
    @post.update(post_params)
    @post.save
    redirect_to blog_path(@post)
  end

  def show
    @post = Post.find_by(slug: params[:headline])
  end

    private

    def post_params
      params.require(:post).permit(:headline, :date, :content)
    end


end
