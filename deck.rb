class Deck
  # カードデッキを作成し、シャッフルまで行う
  def initialize
   # デッキの配列を作成
    @cards = []

    pc = ["スペード", "ハート", "ダイア", "クラブ"]

    num = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q" ,"K"]

    # カードの生成
    pc.each do |picture|
      num.each do |number|
        # markとnumberの組み合わせを一つずつcardクラスに渡し、それぞれのcardオブジェクトを生成する
        card = Card.new(picture, number)
        # 生成したcardを配列に格納していく
        @cards << card
      end
    end
    # デッキをシャッフルする
    @cards.shuffle!
  end

  def draw
    # 配列の最初の要素を抜き出す
    @cards.shift
  end

  def view
    @cards.each do |card|
      puts card.show
    end
  end
end
