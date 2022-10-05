class ColorsController < ApplicationController
  def index
    colors = Color.all
    render status: 200, json: {colors: colors}
  end

  def show
  end

  def create
    @color = Color.new(color_params)
  end

  def update
  end

  def destroy
  end

  private

    def color_params
      params.require(:color).permit(:name)
    end
end
