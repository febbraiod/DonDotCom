class DesignsController < ApplicationController

  def index
    @designs = Design.all
  end

  def new
    @design = Design.new
    @design.build_gallery
  end

  def create
    @design = design.new(design_params)
    params[:photos].each do |pic|
      @design.gallery.photos << Photo.create(pic: pic)
    end
    @design.save
    redirect_to design_path(@design)
  end

  def show
    @design = Design.find_by(id: params[:id])
  end

  def edit
    @design = Design.find_by(id: params[:id])
    @design.build_gallery unless @design.gallery
  end

  def update
    @design = Design.find_by(id: params[:id])
    @design.update(design_params)
    binding.pry
     params[:photos].each do |pic|
      @design.gallery.photos << Photo.create(pic: pic)
    end
    redirect_to design_path(@design)
  end

    private

    def design_params
        params.require(:design).permit(:title, :client, :description, 
                                     :gallery_attributes => [:name, :photos => []])
    end

end
