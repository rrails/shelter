# Animals which have been adopted are removed from the list

class Animal
  attr_accessor :name, :type, :breed, :age, :gender, :toy

  def initialize(name, type, breed, age, gender,toy)

    @name = name
    @type = type
    @breed = breed
    @age = age
    @gender = gender
    @toy = toy

  end

  def to_s
    "#{name} is a #{type} whose breed is #{breed}"
  end

end