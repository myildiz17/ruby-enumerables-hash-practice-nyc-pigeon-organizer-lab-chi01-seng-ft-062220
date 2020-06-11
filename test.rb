require 'pry'
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

set.uniq!
set2=[]
count=0
while count<set.size do
 set[count].collect do |key, value|
   set2<<value
end
count+=1
end
   #p set2

   count2 = 0
   results_array = [] # new array

   while count2 < set2.length do

   inner_count = 0
   while inner_count < set2[count2].length do
   results_array << set2 [count2][inner_count] # pushes every element into an array
   inner_count += 1
   end
   count2 += 1
   end

set_keys=[]
   pigeon_data.collect do |key,value|
    set_keys<<key
end
#p results_array
uniq_array=results_array.uniq!
#p uniq_array
#  new_hash={uniq_array[0]=>{set_keys[0]=>"",set_keys[1]=>"",set_keys[2]=>""},
#  uniq_array[1]=>{set_keys[0]=>"",set_keys[1]=>"",set_keys[2]=>""},
#  uniq_array[2]=>{set_keys[0]=>"",set_keys[1]=>"",set_keys[2]=>""},
#  uniq_array[3]=>{set_keys[0]=>"",set_keys[1]=>"",set_keys[2]=>""},
#  uniq_array[4]=>{set_keys[0]=>"",set_keys[1]=>"",set_keys[2]=>""},
#  uniq_array[5]=>{set_keys[0]=>"",set_keys[1]=>"",set_keys[2]=>""}
#}

 #puts new_hash
 set_keys

newest_hash={uniq_array[0]=>{color:{},gender:{},lives:{}}}
count3=1

while count3<uniq_array.length do
  newest_hash=newest_hash.merge({uniq_array[count3]=>{color:{},gender:{},lives:{}}})

  count3+=1
end

 p newest_hash
#p newest_hash
#{ "one" => "eins" }.merge({ "two" => "zwei" })
#=> { "one" => "eins", "two" => "zwei" }


#p set[1]
#p set[2]
#p set[3]



#count=0
#while count< set.length do
#  puts set[count]
#  count+=1
# end


#puts set2

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
