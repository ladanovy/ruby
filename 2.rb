# Advent of Code 2 
require "csv"

input = '2-input-krabice.txt'
hash = {}

  
def load1 
File.open(input,"r") do |list|
  list.each_line do |line|
       
    surface_of_box =  line.gsub(/[^0-9]/,' ')  
    p surface_of_box
   # hash[line.strip] = "kokot"
  end
end
end


def load2
  rozmery_krabice_all = []
    CSV.foreach('2-input-krabice.txt',{converters: :numeric, :col_sep => 'x'}) do |row| 
        rozmery_krabice_all << row.sort   
    end
      
      velikost_obalu_pro_krabici = []
      rozmery_krabice_all.each do |krabice|   # pro kazdou jednotlivou krabici
           velikost_obalu_pro_krabici << 2*krabice[0]*krabice[1] + 2*krabice[1]*krabice[2] + 2*krabice[2]*krabice[0] + krabice[0]*krabice[1]            
                  
        end
        celkova_velikost = 0 
        velikost_obalu_pro_krabici.each do |krabice|
        celkova_velikost += krabice
        end
        p celkova_velikost
end


load2


 





# CSV.foreach(sFile, {converters: :numeric, :col_sep => 'x' }) { |row| a << row.sort }
#CSV.foreach(sFile, {converters: :numeric, :col_sep => 'x' }) { |row| a << row.sort }