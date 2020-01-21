class Player
    def hand
      puts "数字を入力してください。"
      puts "0：グー\n1：チョキ\n2：パー"
      jankens = ["グー", "チョキ", "パー"]
      player_hand = gets.chomp
    #   unless player_hand == "0" || player_hand == "1" || player_hand == "2"
    #     puts "0〜2の数字を入力してください。"
    #     binding.irb
    #     ## return true
    #   else
      return player_hand
    end
  end
  class Enemy
    def hand
      enemy_hand = rand(3)
    end
  end
  class Janken
    def pon(player_hand, enemy_hand)
      jankens = ["グー", "チョキ", "パー"]
      unless player_hand == "0" ||player_hand == "1" || player_hand == "2"
        puts "0〜2の数字を入力してください。"
        return true
      else
        if player_hand.to_i == enemy_hand
          puts "相手の手は:#{jankens[enemy_hand]}です。あいこです。"
          return true
        elsif (player_hand == 0 && enemy_hand == 1)||
              (player_hand == 1 && enemy_hand == 2)||
              (player_hand == 2 && enemy_hand == 0)
          puts "相手の手は:#{jankens[enemy_hand]}です。あなたの勝ちです。"
          return false
        else
          puts "相手の手は:#{jankens[enemy_hand]}です。あなたの負けです。"
          return false
        end
    end
  end
end
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new
  next_game = true
  while next_game
    next_game = janken.pon(player.hand,enemy.hand)
  end
