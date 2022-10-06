class SomethingsController < ApplicationController
  def index
    somethings = Something.all
    render status: 200, json: { somethings: somethings }
    # render status: 200, json: { users: users }
  end

  def show
  end

  def create
    @something = Something.new(something_params)
    if @something.save
      render json: { status: 'success', data: @something }
    else
      render json: { status: 'error', data: @something.errors}
    end
  end

  def update
  end

  def destroy
  end

  private

    def something_params
      params.require(:something).permit(:name, :color_id)
    end
end
