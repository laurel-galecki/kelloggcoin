# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

names = ["ben", "brian","evan","anthony"]

ben_balance=0
for txn in blockchain
  if txn["to_user"]== "ben"
    ben_balance = ben_balance + txn["amount"]
  else 0
  end
  if txn["from_user"]== "ben"
    ben_balance = ben_balance - txn["amount"]
  else 0
  end
end

brian_balance=0
for txn in blockchain
  if txn["to_user"]== "brian"
    brian_balance = brian_balance + txn["amount"]
  else 0
  end
  if txn["from_user"]== "brian"
    brian_balance = brian_balance - txn["amount"]
  else 0
  end
end

evan_balance=0
for txn in blockchain
  if txn["to_user"]== "evan"
    evan_balance = evan_balance + txn["amount"]
  else 0
  end
  if txn["from_user"]== "evan"
    evan_balance = evan_balance - txn["amount"]
  else 0
  end
end

anthony_balance=0
for txn in blockchain
  if txn["to_user"]== "anthony"
    anthony_balance = anthony_balance + txn["amount"]
  else 0
  end
  if txn["from_user"]== "anthony"
    anthony_balance = anthony_balance - txn["amount"]
  else 0
  end
end


puts "#{names[0]}'s KelloggCoin balance is #{ben_balance}" .capitalize
puts "#{names[1]}'s KelloggCoin balance is #{brian_balance}" .capitalize
puts "#{names[2]}'s KelloggCoin balance is #{evan_balance}" .capitalize
puts "#{names[3]}'s KelloggCoin balance is #{anthony_balance}" .capitalize