require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_type = gets.chomp
  puts "メモしたい内容を入力してください"
  puts "完了したらctl+Dをおします"
  memo_text = readlines
  
  CSV.open("memo.csv", "w") do |test|
   test << [memo_type]
   test << [file_type]
   test << [memo_text]
  end
  
  
elsif memo_type == 2
  file_type = gets.chomp
  puts "編集したいメモの内容を入力してください"
  puts "完了したらctl+Dをおします"
  memo_text = readlines
  
   CSV.open("text.csv", "a") do |test|
   test << [memo_type]
   test << [file_type]
   test << [memo_text]
  end
  
else
  puts "1か2を入力してください"
  
end