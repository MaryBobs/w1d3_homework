users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter] ##

# 2. Get Erik's hometown
p users["Erik"][:home_town] ##

# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers] ##

# 4. Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species] ##

# 5. Get the smallest of Erik's lottery numbers

for lowest_number in users
  lowest_number = users["Erik"][:lottery_numbers].min
end
p lowest_number
## I've over complicated it
## users["Erik"][:lottery_numbers].min

# 6. Return an array of Avril's lottery numbers that are even

for number in users["Avril"][:lottery_numbers]
  if number.even?
    p number
  end
end
## mine returned the numbers but not in an array
## 	result = []
##	for number in users["Avril"][:lottery_numbers]
##		result << number if number.even?
##	end
##	p result
# Or
##
## def evil_even_numbers(array_of_numbers)
##   result = []
##   for number in array_of_numbers
##     result.push(number) if(number.even?)
##   end
##
##   return result
## end
##
## array = users["Avril"][:lottery_numbers]
## evens = evil_even_numbers(array)
##
## p evens

# # 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7) ##
p users["Erik"][:lottery_numbers]
## could also have done
## users["Erik"][:lottery_numbers] << 7

# # # 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town] ##

# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push(name: "Fluffy", species: "dog") ##
p users["Erik"][:pets]
## solution is different though
## 	dog = {
##	  :name => "fluffy",
##	  :species => "dog"
##	}

##	users["Erik"][:pets] << dog

# 10. Add another person to the users hash
## I didn't solve
## me =  {
##  :twitter => "tgoncalves",
##  :lottery_numbers => [1, 2, 9, 10, 14, 28],
##  :home_town => "Morningside",
##  :pets => [
##      {
##        :name => "tommy",
##        :species => "cat"
##      }
##    ]
##  }

## users["Tony"] = me

## So for 9 and 10 the solutions create a temporary? variable
## to store the information
## and then add the hash.
