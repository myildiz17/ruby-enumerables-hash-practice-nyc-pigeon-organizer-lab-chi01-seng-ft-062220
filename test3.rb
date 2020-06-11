
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
pigeon_data[:color][:purple].each do |value|
  set<<value
end
  pigeon_data[:color][:grey].each do |value|
    set<<value
end
pigeon_data[:color][:white].each do |value|
  set<<value
end
pigeon_data[:color][:brown].each do |value|
  set<<value
end
pigeon_data[:gender][:male].each do |value|
  set<<value
end
pigeon_data[:gender][:female].each do |value|
  set<<value
end
pigeon_data[:lives]["Subway"].each do |value|
  set<<value
end
pigeon_data[:lives]["Central Park"].each do |value|
  set<<value
end
pigeon_data[:lives]["Library"].each do |value|
  set<<value
end
pigeon_data[:lives]["City Hall"].each do |value|
  set<<value
end


set.uniq!
p set

#i=0
#j=0
#while i<3 do
#  while j<4 do
#pigeon_data[i][j].each do |value|
  #set<<value

#  j+=1
#end
#end
#i+=1
#end
#  p set
#  key.to_s

#new_pigeon = pigeon_data[:color].inject({}) { |memo, (k,v)| memo[k.to_s]=v ; memo }

#p new_pigeon
#inverted=pigeon_data.invert
#puts inverted
#pigeon_data.collect do |key,value|
#  key.to_s
  #p key,":",value
#end

#p pigeon_data[:color][:purple]
#new=pigeon_data.to_a
#p new
#p pigeon_data.keys
#p pigeon_data
#bat=at.reduce ({}) do |memo, (key,value)|
#memo[key]=value.sort
#memo
#end

#p at
#p bat

#at.reduce({}) do |memo, (key,value)|
#memo=key.to_s
#  p key
#end
