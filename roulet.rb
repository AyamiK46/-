class Game

  def janken
    puts "じゃんけん..."
    puts "0(グー）1(チョキ）２(パー)３(戦わない）"
    input = gets.to_i
    output = rand(3)
    jankens = ["グー", "チョキ", "パー"]
  
    unless  0 <= input && input <= 2
        puts "--------------------"
        puts "0-２以外が押された為、じゃんけんを終了します"
        puts "--------------------"
        return
    end
  
    puts "ホイ!"
    puts "--------------------"
    puts "あなた：#{jankens[input]}を出しました"
    puts "相手：#{jankens[output]}を出しました"
    puts "--------------------"

    if input == output
        @result = "draw"
        puts "▷あいこなのでもう１度！"
    elsif input == 0 && output == 1|| input == 1 && output == 2 || input == 2 && output == 0
        @result = "win"
        puts "▷じゃんけんはあなたの勝ち！"
        puts "▷あっち向いてほいに進みます!"
        acchimuite_hoi
    else
        @result = "lose"
        puts "▷じゃんけんはあなたの負け！"
        puts "▷あっち向いてほいに進みます!"
        acchimuite_hoi
    end  
  end


  def acchimuite_hoi
    if @result == "win"
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      acchimuite_hois = ["上","下","左","右"]
      your_direction = gets.to_i
      pc_direction = rand(3)
      puts "ホイ!"
      puts "--------------------"
      puts "あなた：#{acchimuite_hois[your_direction]}"
      puts "相手：#{acchimuite_hois[pc_direction]}"
      puts "--------------------"
      if your_direction == pc_direction
          puts "▷あなたの勝ち！！"
          return
      else
          puts "▷引き分け！じゃんけんに戻ります。"
          janken
      end
    elsif @result == "lose"
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      acchimuite_hois = ["上","下","左","右"]
      your_direction = gets.to_i
      pc_direction = rand(3)
      puts "ホイ!"
      puts "--------------------"
      puts "あなた：#{acchimuite_hois[your_direction]}"
      puts "相手：#{acchimuite_hois[pc_direction]}"
      puts "--------------------"
      if your_direction == pc_direction
          puts "▷あなたの負け！！"
          return
      else
          puts "▷引き分け！じゃんけんに戻ります。"
          janken
      end
    end

    while @result == "draw"
      janken
    end
  end

end

game = Game.new
game.janken
game.acchimuite_hoi





