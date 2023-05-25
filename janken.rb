class Game
  puts "じゃんけん..."
  
  def janken
    puts "0(グー)1(チョキ)2(パー)"

     player_hand = gets.chomp.to_i
     program_hand = rand(3)
     janken = ["グー","チョキ","パー"]

    puts "あなた : #{janken[player_hand]}を出しました"
    puts "相手 : #{janken[program_hand]}を出しました"
    
    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "あなたの勝ちです"
      $more_game = "win"
      return false
    else 
      puts "あなたの負けです"
      $more_game = "lose"
      return false
    end
  end
    
  
  def look_this_way
    puts "あっち向いて..."
    puts "0(上)1(右)2(下)3(左)"
    
    player_direction = gets.chomp.to_i
    program_direction = rand(4)
    direction = ["上","右","下","左"]

    puts "あなた : #{direction[player_direction]}"
    puts "相手 : #{direction[program_direction]}"
    
    
   if player_direction == program_direction
        case $more_game
        when "win"
          puts "あなたの勝ちです"
          return false
        when "lose"
          puts "あなたの負けです"
          return false
        end
   else
      puts "勝敗が決まりません"
      return true
    end
   end
  end
  
  game = Game.new
  next_game = true
  while next_game
    result = game.janken
    if result
      result = game.janken
    else
      next_game = game.look_this_way
    end
  end


