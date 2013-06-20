require 'pry'
require 'pry-debugger'
require_relative 'client'
require_relative 'animal'
require_relative 'shelter'

shelter = nil
shelter = Shelter.new('HappiAni', 'Sydney')

def maintain(shelter)

  print "add (C)lient or (A)nimal or (q)uit: "
  response = gets.chomp.downcase

  while response != 'q'
    if response == 'c'
      print "Name: "
      name = gets.chomp
      print "Age: "
      age = gets.to_i
      print "Gender: "
      gender = gets.chomp
      print "Num of kids: "
      numofkids = gets.to_i
      print "Number of pets: "
      numofpets = gets.to_i
      print "Are you a donor?"
      isdonor = gets.chomp.downcase
      shelter.clients[name] = Client.new(name,age,gender,numofkids,numofpets,isdonor)
    elsif response == 'a'
      print "Name: "
      name = gets.chomp
      print "Type either Dog or Cat:"
      type = gets.chomp
      print "Breed:"
      breed = gets.chomp
      print "Age:"
      age = gets.to_i
      print "Gender:"
      gender = gets.chomp
      print "Favourite Toy: "
      toy = gets.chomp
      shelter.animals[name] = Animal.new(name, type,breed,age,gender,toy)
    end
    print "add (C)lient or (A)nimal or (q)uit: "
    response = gets.chomp.downcase
  end
  return shelter
end

def list(shelter)
  print "List (C)lient or (A)nimal or (q)uit: "
  response = gets.chomp.downcase
  while response != 'q'
    if response == 'a'
      shelter.animals.each {|k,v| puts "#{v}"}
    elsif response == 'c'
      shelter.clients.each {|k,v| puts "#{v}"}
    end
    print "List (C)lient or (A)nimal or (q)uit: "
    response = gets.chomp.downcase
  end
  return shelter
end

print "(m)aintain data or (l)ist data or (q)uit: "
response = gets.chomp.downcase

while response != 'q'
  if response == 'm'
    shelter = maintain(shelter)
  elsif response == 'l'
    list(shelter)
  end
  print "(m)aintain data or (l)ist data or (q)uit: "
  response = gets.chomp.downcase
end
