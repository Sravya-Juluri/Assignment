puts "enter size of stack"
n = gets.to_i
stk = Array.new
loop do 
puts "enter choice"
puts "1.Push
2.Pop
3.Display
4.Exit"
c = gets.to_i
case c
when 1
   if stk.size!=n
        puts "enter element"
        stk.push(gets.to_i)
    else
        puts "full"
        exit
    end
    
when 2
    stk.pop    
when 3
     for i in 0..n-1
        puts "#{stk[n-i-1]}"
     end
when 4
    exit
end
end
