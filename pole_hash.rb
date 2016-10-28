h1 = { 0 => 1, 1 => false, "key1" => "value1", "key2" => nil }
h2 = { 1 => 1, 1 => true, "key2" => "value2", "key3" => nil }  
  
  p h1.merge(h2)  # V případě kolize klíčů bude použita hodnota toho asociativního pole, které bylo použito jako parametr metody.
  
  pole1 = [3,4,5,6,333,5,3,5,6,7]   
  pole2 = [55,7,7,5,4,2,44,0,-6]
  
  p pole1.concat(pole2)           # concatenate - spojeni pouze pro array