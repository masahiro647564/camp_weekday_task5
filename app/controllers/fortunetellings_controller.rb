class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    @birthday = params[:birthday]
    #@birthdayにパラメーターを入れたものに､それぞれ代入する｡
    @year = @birthday[0, 4]
    @month = @birthday[4, 2]
    @day = @birthday[6, 2]
    @happy = happy(@birthday)
    @constellations = constellation(@month, @day)
    @fortune = ["大吉", "中吉", "小吉", "凶", "大凶"].shuffle[0]
    @age = age(@birthday)
  end
end
