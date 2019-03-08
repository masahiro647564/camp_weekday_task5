class FortunetellingController < ApplicationController
  def show
    @years = params[:numbers][0..3].to_i
    @months = params[:numbers][4..5].to_i
    @dates = params[:numbers][6..7].to_i
    @fortune = ["大吉", "中吉", "小吉", "凶", "大凶"].shuffle[0]

  end
end
