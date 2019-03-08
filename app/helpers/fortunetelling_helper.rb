module FortunetellingHelper

  def constellation(month, date)
    @constellations = 
                      if month == 1 && date.between?(20, 31) || month == 2 && date.between?(1, 18)
                        "水瓶"
                      elsif month == 2 && date.between?(19, 29) || month == 3 && date.between?(1, 20) 
                        "魚"
                      elsif month == 3 && date.between?(21, 31) || month == 4 && date.between?(1, 20)
                        "牡羊"
                      elsif month == 4 && date.between?(21, 30) || month == 5 && date.between?(1, 20)
                        "牡牛"
                      elsif month == 5 && date.between?(21, 31) || month == 6 && date.between?(1, 21)
                        "双子"
                      elsif month == 6 && date.between?(22, 30) || month == 7 && date.between?(1, 22)
                        "蟹"
                      elsif month == 7 && date.between?(23, 31) || month == 8 && date.between?(1, 22)
                        "獅子"
                      elsif month == 8 && date.between?(23, 31) || month == 9 && date.between?(1, 22)
                        "乙女"
                      elsif month == 9 && date.between?(23, 30) || month == 10 && date.between?(1, 23)
                        "天秤"
                      elsif month == 10 && date.between?(24, 31) || month == 11  && date.between?(1, 22)
                        "蠍"
                      elsif month == 11 && date.between?(23, 30) || month == 12 && date.between?(1, 21)
                        "射手"
                      elsif month == 12 && date.between?(22, 31) || month == 1 && date.between?(1, 19)
                        "山羊"
                      end

  end

  def age(birthday)
    @age = (Date.today.strftime('%Y%m%d').to_i - @birthday.to_i) / 10000
  end
end
