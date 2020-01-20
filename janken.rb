class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "数字を入力してください。"
    puts "0：グー\n1：チョキ\n2：パー"
    input_hand = gets
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    jankens = ["グー", "チョキ", "パー"]
    player_hand = player_hand.to_i
    if player_hand === enemy_hand
      puts "相手の手は:#{jankens[enemy_hand]}です。あいこです。"
      return true
    elsif player_hand < 0 || player_hand > 2
      puts "0〜2の数字を入力してください。"
      return true
    elsif(player_hand == 0 && enemy_hand == 1)||(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 3)
      puts "相手の手は:#{jankens[enemy_hand]}です。あなたの勝ちです。"
    else
      puts "相手の手は:#{jankens[enemy_hand]}です。あなたの負けです。"
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game = true
while next_game
  game = janken.pon(player.hand, enemy.hand)
end

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
