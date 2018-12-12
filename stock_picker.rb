def stock_picker(prices)
  profit = 0
  days_index = 0
  buy = 0
  sell = 0
  
  prices.each do |day1|
    days_index = days_index + 1
    prices.each do |day2|
      if days_index > prices.index(day2)
        next
      else
        unless (day2 - day1) < profit
          profit = (day2 - day1)
          buy = prices.index(day1)
          sell = prices.index(day2)
        end
      end
    end
  end
  p prices
  puts "**********************************"
  puts "Buy on day #{buy}"
  puts "Sell on day #{sell}"
  puts "====>Total Profit: $#{profit}.00 USD."
end

def random_stocks(input)
  number_of_days = []
  input.times {number_of_days.push(rand(1..1000))}
  return number_of_days
end 

stock_picker(random_stocks(7))
