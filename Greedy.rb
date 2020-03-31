class Greedy
num = gets.to_i
d=0
digit=0
dig=0
di=0
while num>0 do
   if num>100
    digit = num/100+digit
    num = num%100
  end
  if num>50
    d = num/50+d
    num = num%50
  end
  if num>10
    di = num/10+di
    num = num%10
  else 
    dig = num+dig
    num = 0
  end
 end
 hash = {"100"=>digit,"50"=>d,"10"=>di,"1"=>dig}
puts "#{hash}"
end
