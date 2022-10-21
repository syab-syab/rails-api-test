class SomethingsController < ApplicationController
  def index
    somethings = Something.all
    render status: 200, json: { status: 200, somethings: somethings }
    # render status: 200, json: { users: users }
  end

  def show
    @something = Something.find(params[:id])
    render status: 200, json: @something
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
    @something = Something.find(params[:id])
    # バリデーションはnameだけで良いかも
    @something.update(something_params)
    render json: @something
  end

  def destroy
    @something = Something.find(params[:id]).destroy
    render json: { status: "success" }
  end

  private

    def something_params
      params.require(:something).permit(:name, :color_id)
    end
end
