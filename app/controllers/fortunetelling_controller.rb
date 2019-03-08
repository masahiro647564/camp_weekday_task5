class FortunetellingController < ApplicationController
  include FortunetellingHelper

  def show
    @birthday = params[:birthday]
    #@birthdayにパラメーターを入れたものに､それぞれ代入する｡
    @year = @birthday[0, 4].to_i
    @month = @birthday[4, 2].to_i
    @date = @birthday[6, 2].to_i
    @happy = happy(@birthday)
    @constellations = constellation(@month, @date)
    @fortune = ["大吉", "中吉", "小吉", "凶", "大凶"].shuffle[0]
    @age = age(@birthday)
  end
end
