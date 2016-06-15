class ProgramsController < ApplicationController

 def index
    @programs = Program.all
  end

  def new
    @program = Program.new
    @program.build_gallery
  end

  def create
    @program = Program.new(program_params)
    @program.add_photos(params[:photos])
    @program.save
    redirect_to programs_path
  end

  def show
    @program = Program.find_by(id: params[:id])
  end

  def edit
    @program = Program.find_by(id: params[:id])
    @program.build_gallery unless @program.gallery
  end

  def update
    @program = Program.find_by(id: params[:id])
    @program.update(program_params)
    @program.add_photos(params[:photos]) unless params[:photos].nil?
    redirect_to programs_path
  end

    private

    def program_params
        params.require(:program).permit(:title, :description, :link, :demo,
                                        :gallery_attributes => [:name, :photos => []])
    end

end
