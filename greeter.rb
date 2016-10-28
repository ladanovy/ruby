class Greeter
  def initialize(name= "WORLD")   # hodnota default , kdyz tam neprijde parameter
    @name = name
  end

  def hi
    puts "Hi #{@name} from class "
  end


  def goodbye
    puts "BYE #{@name}"

  end
end

tonda = Greeter.new("Tonda")
tonda.hi
tonda.goodbye

nikdo = Greeter.new()    # nedavam zadny
nikdo.goodbye
