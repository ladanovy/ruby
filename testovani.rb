class Testovani

  def nacteni_zbozi
     @zbozi = []  # vytvoreni pole v kterem budou hashe 
     CSV.open('prijem_zbozi.csv', "r") do |csv|
       csv.each do |row|
         line = {}  # jde o to udelat hashe v poli kde bude : KLIC - date , a VALUE - pocet
         line["date"] = DateTime.strptime(row[0], "%d.%m.%Y %H:%M")
         line["count"] = row[1].to_i
         @zbozi << line
       end
     end
   end

end