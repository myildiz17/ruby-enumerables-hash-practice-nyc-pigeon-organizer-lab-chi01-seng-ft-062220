h = { "a" => 100, "b" => 200 }
h.value?(100)   #=> true
h.value?(999)   #=> false

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

set=[]

pigeon_data.collect do |key,value|
 set<<value
end
set_color=[]
set_color_values=[]
set_color_keys=[]
set[0].collect do |key, value|
  set_color_values<<value
  set_color_keys<<key
 end
count5=0
while count5<set_color_values.length do
  if set_color_keys[count5]=="Theo"
    set_color<<set_color_keys[count5]
    count5+=1
end
p set_color

end
 set_color_values
 set_color_keys

set.uniq!
set
set2=[]
count=0
while count<set.size do
 set[count].collect do |key, value|
   set2<<value
end
count+=1
end
