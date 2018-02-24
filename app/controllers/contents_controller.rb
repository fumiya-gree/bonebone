class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end
# contentsテーブルから該当するidのコース情報を取得し@productの変数へ代入する処理を書いて下さい
  def show
  end

  def log_out_screen
  end
end
