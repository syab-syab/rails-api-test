class TeasController < ApplicationController
  def index
    @teas = Tea.all
    render status: 200, json: { status: 200, tea: @teas }
  end

  def show
    @tea = Tea.find(params[:id])
    render status: 200, json: @tea
  end

  def create
    @tea = Tea.new(tea_params)
    if @tea.save
      render json: { status: 'success', data: @tea }
    else
      render json: { status: 'error', data: @tea.errors}
    end
  end

  def update
    @tea = Tea.find(params[:id])
    # バリデーションはnameだけで良いかも
    @tea.update(tea_params)
    render json: @tea
  end

  def destroy
    @tea = Tea.find(params[:id]).destroy
    render json: { status: "success" }
  end

  private

    def tea_params
      params.require(:tea).permit(:name, :description, :type_id, :caffeine_id)
    end
end
