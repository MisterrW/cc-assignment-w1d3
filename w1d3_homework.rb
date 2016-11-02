# Part A

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the lines array
lines.length

# 2. Return 'Edinburgh Park' from the array
lines[1]

# 3. How many ways can we return 'Princes Street' from the array?
#Two ways:
lines[4]
lines[-1]

# 4. Work out the index position of 'Haymarket'
lines.each_with_index do |x, y|
  if x == "Haymarket"
    return y
  end
end

# 5. Add 'Airport' to the start of the array
lines.unshift("Airport")

# 6. Add 'York Place' to the end of the array
lines << "York Place"

# 7. Remove 'Edinburgh Park' from the array using it's name
lines.each_with_index do |x, y|
  if x == "Edinburgh Park"
    lines.delete(y)
  end
end
lines.delete("Edinburgh Park")

# # 8. Delete 'Edinburgh Park' from the array by index
#note: if part 5 not completed, this should be index 1 not 2, because Airport hasn't been added at position 0
lines.delete_at(1)

# # 9. Reverse the positions of the stops in the array
lines.reverse!

# 10. Print out all of the stops using a for loop and a while loop
# for loop:
for x in lines
  puts x
end

#while loop:
counter = 0
while counter < lines.length
  puts lines[counter]
  counter += 1
end

# Part B

my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string "One"?
my_hash[1]

# 2. How would you return the string "Two"?
my_hash[:two]

# 3. How would you return the number 2?
my_hash["two"]

# 4. How would you add {3 => "Three"} to the hash?
my_hash[3] = "Three"

# 5. How would you add {:four => 4} to the hash?
my_hash[:four] = 4

#Part C

users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        :fluffy => "cat",
        :fido => "dog",
        :spike => "dog"
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        :nemo => "fish",
        :kevin => "fish",
        :rover => "dog",
        :rupert => "parrot"
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        :sssteven => "snake"
      }
    },
  }

  # 1 Return Jonathan's Twitter handle (i.e. the string "jonnyt")
  users["Jonathan"][:twitter]

  # 2 Return Erik's hometown
  users["Erik"][:home_town]
  # 3 Return the array of Erik's favorite numbers

  users["Erik"][:favourite_numbers].to_s

  # 4 Return the type of Avril's pet Colin
  #Avril doesn't have a pet called Colin!
  "Avril doesn't have a pet called Colin, but she has one called Sssteven. Sssteven is a #{users["Avril"][:pets][:sssteven]}."

  # 5 Return the smallest of Erik's favorite numbers
  # Included sort! because numbers wouldn't neccessarily be in order yet
  users["Erik"][:favourite_numbers].sort![0]

  # 6 Return an array of Avril's favorite numbers that are even
  users["Avril"][:favourite_numbers].each do |x| 
    x if x%2 == 0
  end

  # 7 Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
  numbers = []
  users["Jonathan"][:favourite_numbers].sort!.each do |x|
    unless numbers.include? x
      numbers << x
    end
  end
  numbers

  # 8 Add the number 7 to Erik's favorite numbers
  users["Erik"][:favourite_numbers].push(7)
  
  # 9 Change Erik's hometown to Edinburgh
  users["Erik"][:home_town] = "Edinburgh"
  
  # 10  Add a pet dog to Erik called "Fluffy"
  users["Erik"][:pets][:fluffy] = "dog"

  # 11  Add yourself to the users hash
  users["Will"] = {
    twitter: "none",
    favourite_numbers: [7, 42],
    home_town: "Glastonbury",
    pets: {
      mephisto: "cat"
    }
  }