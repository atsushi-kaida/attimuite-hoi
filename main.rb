
def rps(hand,enemy_hand)
  if hand == 1
    puts "あなた:グーを出した"
    if enemy_hand == 1
      puts "あいて:グーを出した"
      $result = "引き分け"
    elsif enemy_hand == 2
      puts "あいて:チョキを出した"
      $result = "勝ち"
    elsif enemy_hand == 3
      puts "あいて:パーを出した"
      $result = "負け"
    end
  elsif hand == 2
    puts "あなた:チョキを出した"
    if enemy_hand == 1
      puts "あいて:グーを出した"
      $result = "負け"
    elsif enemy_hand == 2
      puts "あいて:チョキを出した"
      $result = "引き分け"
    elsif enemy_hand == 3
      puts "あいて:パーを出した"
      $result = "勝ち"
    end
  elsif hand == 3
    puts "あなた:パーを出した"
    if enemy_hand == 1
      puts "あいて:グーを出した"
      $result = "勝ち"
    elsif enemy_hand == 2
      puts "あいて:チョキを出した"
      $result = "負け"
    elsif enemy_hand == 3
      puts "あいて:パーを出した"
      $result = "引き分け"
    end
  else
    puts "なにかへん＠ｒｐｓ"
  end
end



def which_angle(angle)
  if angle == 1
    return "上"
  elsif angle == 2
    return "下"
  elsif angle == 3
    return "右"
  elsif angle == 4
    return "左"
  else
    puts "なにかへん＠which_angle"
  end
end



def atti()
  puts "--------------------------------------------"
  puts "あっち向いて～"
  puts "1(上)  2(下)  3(右)  4(左)"
  me = gets.to_i
  he = rand(4)+1
  puts "ホイ！！"
  puts "あなた:" + which_angle(me)
  puts "あいて:" + which_angle(he)
  if me == he
    return true
  else
    return false
  end
end



aiko = false
$win = 0
$lose = 0
loop{
  puts "--------------------------------------------"
  if aiko 
    puts "あいこで......"
  else
    puts "--------------------------------------------"
    puts "じゃんけん......"
  end
  
  puts "1(グー)  2(チョキ)  3(パー)  4(戦わない)"
  
  my_hand = gets.to_i
  enemy_hand = rand(3)+1
  
  if my_hand == 4
    break
  end
  
  if aiko
    puts "しょ！！"
  else
    puts "ぽん！！"
  end
  
  rps(my_hand, enemy_hand)
  
  if $result == "勝ち"
    aiko = false
    if atti()
      puts "あなたの勝ち！！"
      $win +=1
    end
  elsif $result == "負け"
    aiko = false
    if atti()
      puts "あなたの負け..."
      $lose +=1
    end
  elsif $result == "引き分け"
    aiko = true
  else
    puts "なにかへん"
  end
}
puts "決着！！"
puts $win.to_s + " - " + $lose.to_s
