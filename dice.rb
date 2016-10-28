class Dice
@@pocet = 0


  def initialize
    roll
    @@pocet += 1
    @delitel = 2

  end

  def roll
    @number = 1 + rand(6)
  #  puts @number / @delitel
  end

  def show
   puts @number
  
  end

  def retvalue
    return 1324
  end
  
  def pocet_objektu
    puts @@pocet
  end

end

hod1 = Dice.new
hod1.show
hod1.roll

result = hod1.retvalue()  # diky () chci primo vysledek metody , bez toho by tam byl v jinych jazycich ulozen pouze ukazatel na metodu

puts result

hod2 = Dice.new
hod2.show
hod2.pocet_objektu

dMethods = {}
dMethods['+'] = secti

result = dMethods[csvline[0]](csvline[1], csvline[2])