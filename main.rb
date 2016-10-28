# Příklad: Program bude spuštěn s parametry prijem_zbozi.csv prijezd_kamionu.csv vystup.csv.
# To pak znamená, že vstupní data budou čtena ze souborů prijem_zbozi.csv a prijezd_kamionu.csv.
# Program svůj výstup zapíše do souboru vystup.csv.

require 'csv'


class Load_items

#,l  attr_accessor :zbozi, :kamiony   # pristup k atributum zbozi a kamiony uvnitr metod z venku ... (puts objekt.zbozi , objekt.kamiony)

 
  def nacteni_zbozi
    @zbozi = []  # pole do ktereho budu ukladat hashe
    CSV.open('prijem_zbozi.csv',"r") do |csv|
      csv.each do |row|
        line = {} # vytvorime prazdny hash
          line["date"] = DateTime.strptime(row[0],"%d.%m.%Y %H:%M")
          line["count"] = row[1].to_i
        @zbozi << line
                                  end
              end
    
  end
  

  def vypis_zbozi
    p @zbozi
  end
  

  def prijezd_kamionu
    @kamiony = []
    CSV.open('prijezd_kamionu.csv', "r") do |csv|
      csv.each do |row|
        line = {}
        line["date"] = DateTime.strptime(row[0], "%d.%m.%Y %H:%M")
        line["name"] = row[1].to_s
        @kamiony << line
      end
    end
  end


  def vypis_kamiony
    p @kamiony
  end

  def process
    @kamiony

  end



end

load = Load_items.new
load.nacteni_zbozi
load.prijezd_kamionu
load.vypis_zbozi
load.vypis_kamiony()






