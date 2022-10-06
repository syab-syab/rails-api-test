class ApplicationController < ActionController::Base
  # この記述を入れないとエラー(多分ルーティング)発生する
  protect_from_forgery with: :null_session
end
