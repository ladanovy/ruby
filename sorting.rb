pole1 = [3,5,22,2,3,55]
employees = [
  {"first_name" => "James", "last_name" => "Smith", "age" => 22, "wage" => 20000},
  {"first_name" => "Mary", "last_name" => "Johnson", "age" => 20, "wage" => 19000},
  {"first_name" => "John", "last_name" => "Williams", "age" => 25, "wage" => 22000},
  {"first_name" => "Patricia", "last_name" => "Brown", "age" => 30, "wage" => 25000},
  {"first_name" => "Robert", "last_name" => "Jones", "age" => 27, "wage" => 25000},
  {"first_name" => "Linda", "last_name" => "Miller", "age" => 22, "wage" => 21000},
  {"first_name" => "Michael", "last_name" => "Davis", "age" => 35, "wage" => 25000},
  {"first_name" => "Barbara", "last_name" => "Wilson", "age" => 24, "wage" => 23000},
  {"first_name" => "William", "last_name" => "Anderson", "age" => 40, "wage" => 30000},
  {"first_name" => "Elizabeth", "last_name" => "Taylor", "age" => 23, "wage" => 20000},
  {"first_name" => "Jennifer", "last_name" => "Smith", "age" => 25, "wage" => 23000}
]

#p pole1.sort # klasicke serazeni
#p pole1.sort_by {|x| -x } # obracene razeni od nejvetsiho
# puts employees.sort_by{|x| x["age"]}  # serazeni dle age
# puts employees.sort_by{|x| x["wage"]} # serazeni dle wage
   



 
  employees.each do |array|
    array.each do |key,value|
    puts key.class
    end
  end 
