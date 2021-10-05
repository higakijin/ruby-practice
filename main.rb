puts "何本勝負？(press 1 or 3 or 5)"

times = gets.to_i

while times != 1 && times != 3 && times != 5
  puts "無効な回答です。1 3 5で選び直してください。"
  times = gets.to_i
end

puts "#{times}本勝負を選びました"
puts "  "

win = 0
lose = 0

(1..times).each do |time|
  puts "#{time}本目"
  sleep(1)

  def fight
    puts "じゃんけん...(press g or c or p)"
    req = gets.chomp

    while req != "g" && req != "c" && req != "p"
      puts "無効な回答です。g c p で選び直してください。"
      req = gets.chomp
    end

    if req == "g"
      $req = "グー"
    elsif req == "c"
      $req = "チョキ"
    elsif req == "p"
      $req = "パー"
    end

    puts "あなた...#{$req}"
    sleep(2)

    candi = ["グー", "チョキ", "パー"]
    num = rand(0..2)
    $res = candi[num]

    puts "CPU...#{$res}"
    sleep(1)
    puts "  "
  end

  fight

  while $req == $res
    puts "あいこです。もう一度。"
    fight
  end

  if $req == "グー" && $res == "チョキ"
    result = "勝ち！"
  elsif $req == "グー" && $res == "パー"
    result = "負け"
  elsif $req == "チョキ" && $res == "グー"
    result = "負け"
  elsif $req == "チョキ" && $res == "パー"
    result = "勝ち！"
  elsif $req == "パー" && $res == "グー"
    result = "勝ち！"
  elsif $req == "パー" && $res == "チョキ"
    result = "負け"
  end

  puts "#{result}"

  if result == "勝ち！"
    win += 1
  elsif result == "負け"
    lose += 1
  end

  puts "#{win}勝#{lose}敗"
  puts "  "
  sleep(1)
end

puts "結果"

if win > lose
  puts "#{win}勝#{lose}敗であなたの勝ち!"
elsif lose > win
  puts "#{win}勝#{lose}敗であなたの負け"
elsif win == lose
  puts "#{win}勝#{lose}敗で引き分け"
end

  

