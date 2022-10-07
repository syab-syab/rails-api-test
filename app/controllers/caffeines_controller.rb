class CaffeinesController < ApplicationController
  def index
    @caffeines = Caffeine.all
    render status: 200, json: {caffeine: @caffeines}
  end

  def create
    @caffeine = Caffeine.new(caffeine_params)
    if @caffeine.save
      render json: { status: 'success', data: @caffeine }
    else
      render json: { status: 'error', data: @caffeine.errors}
    end
  end

  private

    def caffeine_params
      params.require(:caffeine).permit(:amount)
    end
end
