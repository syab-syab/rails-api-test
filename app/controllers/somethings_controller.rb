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
  end

  def update
  end

  def destroy
  end

  private

    def something_params
      params.require(:color).permit(:name)
    end
end
