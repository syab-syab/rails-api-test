class ColorsController < ApplicationController
  def index
    @colors = Color.all
    # render status: 200, json: {colors: @colors}
    render status: 200, json: @colors
    # render status: 200, json: {status: 200, colors: @colors}
  end

  def show
    @color = Color.find(params[:id])
    render status: 200, json:  @color
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
    @color = Color.find(params[:id])
    # rails7だとupdate_attributesが使えない
    @color.update(color_params)
    # 成功時にはjson返した方が良い気がする
    render json: @color
  end

  def destroy
    @color = Color.find(params[:id]).destroy
    # 削除の時は返した方が良いのかどうか迷う
    render json: { status: "success" }
  end

  private

    def color_params
      params.require(:color).permit(:name)
    end
end
