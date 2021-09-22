ary = [10, 8, 3, 5, 2, 4, 11, 18, 20, 33]

length = ary.length     #10が入る

(1..length).each do  |i| #i=1から10まで
  (1..(length-i)).each  do |j| #最小は1から(10-1)まで
    pre = j - 1  #前の数字
    if ary[pre] > ary[j] #前の数字が後よりも大きいときに並び変え
      hozon = ary[pre]
      ary[pre] = ary[j]
      ary[j] = hozon
      p ary
    end 
  end
end

p "結果は　#{ary}"
