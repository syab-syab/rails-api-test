class CaffeinesController < ApplicationController
  def index
    @caffeines = Caffeine.all
    # render status: 200, json: { status: 200, caffeines: @caffeines}
    render status: 200, json:@caffeines
  end

  def show
    @caffeine = Caffeine.find(params[:id])
    render status: 200, json: @caffeine
  end

  def create
    @caffeine = Caffeine.new(caffeine_params)
    if @caffeine.save
      render json: { status: 'success', data: @caffeine }
    else
      render json: { status: 'error', data: @caffeine.errors}
    end
  end

  # モデル(データ)によってはupdateとdestroyは要らないかもしれない
  # 特にcaffeineやcolorはhas_manyで紐づいているから
  # 削除されると関連付けされているデータも消されてしまう

  def update
    @caffeine = Caffeine.find(params[:id])
    # バリデーションはnameだけで良いかも
    @caffeine.update(caffeine_params)
    render json: @caffeine
  end

  def destroy
    @caffeine = Caffeine.find(params[:id]).destroy
    render json: { status: "success" }
  end

  private

    def caffeine_params
      params.require(:caffeine).permit(:amount)
    end
end
