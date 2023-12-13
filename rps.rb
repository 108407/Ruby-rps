require = "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

# じゃんけんで手を出す処理
def rps_start
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  $rps_number = gets.to_i
  puts "ホイ！"
  puts "----------"
  if $rps_number == 0 or $rps_number == 1 or $rps_number == 2
    rps = ["グー","チョキ","パー"]
    puts "あなた：#{rps[$rps_number]}を出しました" #出した数字に対する手
    rps_enemy
    puts "----------"
      if number = $rps_number - $rps_random
        case number
        when 0 then # じゃんけんが引き分けの時
          rps_same
        when 1, -2 then # じゃんけんに負けた時
          direction_start
            if $direction_number == $direction_random
              puts "あなたの負けです"
              puts "ゲームを終了します"
              puts "----------"
            else
              puts "ゲームを続けます"
              rps_start
            end
        when -1, 2 then # じゃんけんに勝った時
          direction_start
            if $direction_number == $direction_random
              puts "あなたの勝ちです"
              puts "ゲームを終了します"
              puts "----------"
            else
              puts "ゲームを続けます"
              rps_start
            end
        end
      end
  elsif $rps_number == 3
    puts "あなたは戦わないことを選択しました"
    rps_enemy
    puts "ゲームを終了します"
    puts "----------"
  else
    puts "あなたはじゃんけんを放棄しました"
    rps_enemy
    puts "ゲームを終了します"
    puts "----------"
  end
end

# あいこの時の処理
def rps_same
  puts "あいこで..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  $rps_number = gets.to_i
  puts "ショ！"
  puts "--------------"
  if $rps_number == 0 or $rps_number == 1 or $rps_number == 2
    rps = ["グー","チョキ","パー"]
    puts "あなた：#{rps[$rps_number]}を出しました" #出した数字に対する手
    rps_enemy
    puts "----------"
      if number = $rps_number - $rps_random
        case number
        when 0 then # じゃんけんが引き分けの時
          rps_same
        when 1, -2 then # じゃんけんに負けた時
          direction_start
            if $direction_number == $direction_random
              puts "あなたの負けです"
              puts "ゲームを終了します"
              puts "----------"
            else
              puts "ゲームを続けます"
              rps_start
            end
        when -1, 2 then # じゃんけんに勝った時
          direction_start
            if $direction_number == $direction_random
              puts "あなたの勝ちです"
              puts "ゲームを終了します"
              puts "----------"
            else
              puts "ゲームを続けます"
              rps_start
            end
        end
      end
  elsif $rps_number == 3
    puts "あなたは戦わないことを選択しました"
    puts "ゲームを終了します"
  else
    puts "あなたはじゃんけんを放棄しました"
    puts "ゲームを終了します"
  end
end

# 相手が手を出す処理
def rps_enemy
  $rps_random = rand(3) # ランダムで0~2を選択
  rps = ["グー","チョキ","パー"]
  puts "相手：#{rps[$rps_random]}を出しました" #出した数字に対する手
end

# 相手のあっち向いての処理
def direction_enemy
  $direction_random = rand(4)
  direction = ["上","下","左","右"]
  puts "相手：#{direction[$direction_random]}" #出した数字に対する手
end

# あっち向いての処理
def direction_start
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  $direction_number = gets.to_i
  puts "ホイ！"
  puts "-------------"
    if $direction_number == 0 or $direction_number == 1 or $direction_number == 2 or $direction_number == 3
      direction = ["上","下","左","右"]
      puts "あなた：#{direction[$direction_number]}" #出した数字に対する向き
      direction_enemy
      puts "----------"
    else
      puts "あなたは向きを指しませんでした"
      direction_enemy
      puts "ゲームを終了します"
      puts "----------"
    end
end

rps_start

