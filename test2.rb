at={a:2,b:5}
#p at.map {|k,v| [k.to_s,v+1]}

p (1..9).to_h {|n| [n,n**2]}
