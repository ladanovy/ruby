array = [54,32,5,6,7,3,1,555,3,7,8,9,-4,-5,4]

min = array[0]  # nastavit nejmensi cislo , dava se nula,  ale kdyby tam nebyla tak dam prvni prvek pole.

array.length.times do |i|  
  if (array[i] < min)
    min = array[i]
  end
end
 
puts min
