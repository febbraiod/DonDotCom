class DesignsController < ApplicationController

  def index
    @designs = Design.all
  end

  def new
    @design = Design.new
    @design.build_gallery
  end

  def create
    @design = Design.new(design_params)
    @design.add_photos(params[:photos]) unless params[:photos].nil?
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
    binding.pry
    if params[:design][:gallery]["replace photos"] == 'true'
      @design.gallery.photos.delete_all
    end
    @design.update(design_params)
    @design.add_photos(params[:photos]) unless params[:photos].nil?
    redirect_to design_path(@design)
  end

  def destroy
    @design = Design.find_by(id: params[:id])
    @design.gallery.photos.delete_all
    @design.gallery.delete
    @design.delete
    redirect_to designs_path
  end

    private

    def design_params
        params.require(:design).permit(:title, :client_name, :description, :long_desc,
                                       :gallery => [:name])
    end

end
