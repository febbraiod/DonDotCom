class BlogController < ApplicationController


  def index
    @posts = Post.all
    @posts = @posts.sort_by {|a| a.date}.reverse
  end

  def new
    @post = Post.new()
    @post.build_icon
    @post.build_gallery
  end

  def create
    @post = Post.new(post_params)
    @post.add_photos(params[:photos]) unless params[:photos].nil?
    if params[:icon_id]
      @post.icon = Icon.find_by[:icon_id]
    end
    @post.save
    redirect_to blog_path(@post)
  end

  def edit
    @post = Post.find_by(slug: params[:headline])
    @post.build_icon unless @post.icon
    @post.build_gallery unless @post.gallery
  end

  def update
    @post = Post.find_by(slug: params[:headline])
    @post.update(post_params)
    @post.add_photos(params[:photos]) unless params[:photos].nil?
    if params[:icon_id]
      @post.icon = Icon.find_by[:icon_id]
    end
    @post.save
    redirect_to blog_path(@post)
  end

  def show
    @post = Post.find_by(slug: params[:headline])
    respond_to do |f|
      f.html { render :show }
      f.json { render json: @post}
    end
  end

    private

    def post_params
      params.require(:post).permit(:headline, :date, :content, :icon_id, 
                                   :icon_attributes => [:name, :icon], 
                                   :gallery_attributes => [:name, :photos => []])
    end


end
