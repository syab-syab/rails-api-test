class TeasController < ApplicationController
  def index
    @teas = Tea.all
    render status: 200, json: {tea: @teas}
  end

  def create
    @tea = Tea.new(tea_params)
    if @tea.save
      render json: { status: 'success', data: @tea }
    else
      render json: { status: 'error', data: @tea.errors}
    end
  end

  private

    def tea_params
      params.require(:tea).permit(:name, :description, :type_id, :caffeine_id)
    end
end
