class Ukol
  
require 'csv'
#attr_accessor :kamiony
 
 
def prijezd_kamiony
   @kamiony = []
  
    CSV.foreach("prijezd_kamionu.csv") do |row|
    hash = {}
      hash["time"] = DateTime.strptime(row[0],"%d.%m.%Y %H:%M")  # melo by tu bejt date ale zmeneno aby se to dalo spojit
      hash["name"] = row[1].to_s         
      @kamiony << hash    
      #puts @kamiony
      
  end
end

def prijem_zbozi
  @zbozi = []
    
    CSV.foreach("prijem_zbozi.csv") do |row|
      hash = {}
        hash["time"] = DateTime.strptime(row[0],"%d.%m.%Y %H:%M")
        hash["count"] = row[1].to_i      
        @zbozi << hash     
     #   puts @zbozi
    end
end

def test 
  puts "AHOJ zbozi je :#{@zbozi} a kamionu je #{@kamiony}"  
  @zbozi.each do |hash|  # iterace v poli v kterem mam hashe
    puts hash["time"]    # jednotlivej hash a pristup pres klic time k jeho hodnote
  end
  @kamiony.each do |hash|
    puts hash["date"]
  end
  puts  @zbozi[0]["time"] > @kamiony[0]["date"]   # porovnani prvniho hashe z pole zbozi a jeho hodnoty casu s prvnim kamionem a jeho datem prijezdu       
end

def sklad 
  
  all_variables =  @zbozi.concat(@kamiony)       # concatenate - spojeni dvou poli.
  all_variables_sorted =  all_variables.sort_by {|value| value["time"]  }  # serazeni kamionu a zbozi podle toho kdy prijdou na radu
  
  krabice_sklad = []  # pro prubezne krabice na skladu  
  kamiony_sklad = []  
      
  until all_variables_sorted.empty? do   # dokud pole neni prazdne ... ( v prubehu musim promazat prvky co projdu )            
    all_variables_sorted.each do |array|  # prochazeni pole v kterem mam hashe
      array.each do |key,value| # prochazeni jednotlivejch hashu pole
     #   puts "#{key} #{value}"   jen tak z nudy abych videl co tam je :) a vyznal se
         
          case
            when value.class == Fixnum    # kdyz je klic cislo tudiz se jedna o krabice     
               puts "#{value} je FIXNUM"
               puts "Adding in to krabice_sklad"
               krabice_sklad[key] = value               
            when value.class == String
               kamiony = {} 
               puts "#{value} je STRING" 
               puts "Adding in to kamiony_sklad"
               kamiony_sklad[key] = value           
           end 
       end        
   end
end
  
  puts kamiony_sklad
  
end


end

ukol1 = Ukol.new
 ukol1.prijezd_kamiony
 ukol1.prijem_zbozi
 ukol1.sklad