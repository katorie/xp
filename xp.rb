puts "価格を入力してください"
price = gets.chomp

puts "個数を入力してください"
count = gets.chomp

puts "地域を入力してください"
area = gets.chomp

TAXES = {'北海道': 6.85, '東日本': 8, '西日本': 6.25, '四国': 4, '九州': 8.25}

tax_rate = 1 + TAXES[:"#{area}"] / 100

raw_price = price.to_i * count.to_i

discount_rate = if raw_price > 1000
                  3.0
                elsif raw_price > 5000
                  5.0
                elsif raw_price > 7000
                  7.0
                elsif raw_price > 10000
                  10.0
                elsif raw_price > 50000
                  15.0
                end

total = price.to_i * count.to_i * tax_rate * discount_rate

puts "合計は#{total}です。"
