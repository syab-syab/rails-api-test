class ColorsController < ApplicationController
  def index
    @colors = Color.all
    render status: 200, json: {colors: @colors}
  end

  def show
  end

  def create
    # @color = Color.new(color_params)
    @color = Color.new(color_params)
    if @color.save
      render json: { status: 'success', data: @color }
    else
      render json: { status: 'error', data: @color.errors}
    end
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
