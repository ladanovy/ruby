# Advent of CODE - Level 1 #
# read file 1-input.txt

=begin
# 1 - prvni varianta nacteni souboru po radkach
File.open('1-input.txt', "r") do |f|
  line = f.gets  # nacte radek pres gets do promenne
  puts line # vypise radek
end
=end

# 2 - druha varianta nacteni souboru po radkach

count = 0
File.open('1-input-zavorky.txt',"r") do |f|   # v f je cely soubor
  f.each_line do |line|   # v line je jednotliva radka
      line.each_char do |character|
         if character == "("
           count += 1
         elsif character == ")"
           count -= 1
         end
      end      
  end  
end 
  
puts count
    
      
