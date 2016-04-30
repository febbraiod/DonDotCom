class DesignController < ApplicationController

  def index
    @designs = Design.all
  end

end
