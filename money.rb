class Money
  # 所持金の初期値を設定
  def initialize
    @money = 100000
  end

  # 所持金からベット額を減額
  def bet_money(money)
    @money -= money
    return @money
  end

  # 所持金に獲得した金額を増額
  def get_money(money)
    @money += money
    return @money
  end

end
