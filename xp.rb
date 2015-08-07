puts "価格を入力してください"
price = gets.chomp

puts "個数を入力してください"
count = gets.chomp

puts "地域を入力してください"
area = gets.chomp

TAXES = {'北海道': 6.85, '東日本': 8, '西日本': 6.25, '四国': 4, '九州': 8.25}







puts %!#{area} の税率は#{TAXES[:"#{area}"]}です!


total = price.to_i * count.to_i * ( 1 + TAXES[:"#{area}"] / 100 )


puts "合計は#{total}です。"
