class TypesController < ApplicationController
  def index
    @types = Type.all
    render status: 200, json: {type: @types}
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      render json: { status: 'success', data: @type }
    else
      render json: { status: 'error', data: @type.errors}
    end
  end

  private

    def type_params
      params.require(:type).permit(:name)
    end
end
