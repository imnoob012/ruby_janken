#じゃんけん
puts "じゃんけん....."
puts "0(グー)1(チョキ)2(パー)"

def janken
 
 janken = ["グー", "チョキ", "パー"]

 player_hand = gets.chomp.to_i
 program_hand = rand(3)

 puts "あなたの手:#{janken[player_hand]} 相手の手:#{janken[program_hand]}"

 if player_hand == program_hand
 puts "あいこで"
 return true
 elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
 @win = "win"
 look_this_way
 return false
 else
 @lose = "lose"
 look_this_way
 return false
 end
end

#あっち向いてホイ
def look_this_way
 puts "あっち向いて・・・"
 
 look_type = ["上", "右", "下", "左"]
 
 puts "[0]上\n[1]右\n[2]下\n[3]左"
 
 player_look = gets.chomp.to_i
 program_look = rand(4)

 puts "あなた:#{look_type[player_look]}\n相手：#{look_type[program_look]}"

if (player_look == program_look && @win = "win")
 puts "あなたの勝ちです！！"
 return false
elsif  (player_look == program_look && @lose = "lose")
 puts "あなたの負けです。。"
 return false
else 
 return true
end
end

next_game = true

while next_game
 next_game = janken
end


