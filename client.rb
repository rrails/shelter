class Client
  attr_accessor :name, :age, :gender, :numofkids, :numofpets, :isdonor

  def initialize(name,age,gender,numofkids,numofpets, isdonor)
    @name = name
    @age = age
    @gender = gender
    @numofkids = numofkids
    @numofpets = numofpets
    @donor = isdonor == 'y'
  end

 # attr_reader :name

  def to_s
    if @donor
      "#{name} is a donor"
    else
      "#{name} is an adopter"
    end
  end
end