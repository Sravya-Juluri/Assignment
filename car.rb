floors = gets.to_i
lots = gets.to_i
name=Array.new(floors){Array.new(lots)}
color=Array.new(floors){Array.new(lots)}
number=Array.new(floors){Array.new(lots)}
car=0
loop do 
 ak=0
  puts "enter choice"
  puts "1.Push
  2.Pop
  3.Display
  4.Exit"
  c = gets.to_i
  case c
     when 1
        if car < (lots+floors)
        puts "enter name,color,number"
       for i in 0..floors-1
        for j in 0..lots-1
            if ak == 0
             if name[i][j]==nil
                x=gets.to_str
                y=gets.to_str
                z=gets.to_i
                name[i][j]=x
                color[i][j]=y
                number[i][j]=z
                ak=ak+1
                car=car+1
                 break
            end
            end
        end
      end
     else
        puts "lots are full"
     end
     when 2
      puts "enter floor,lot number"
      car = car-1
      fl = gets.to_i
      lt = gets.to_i
      name[fl-1][lt-1]=nil
      color[fl-1][lt-1]=nil
      number[fl-1][lt-1]=nil
     when 3
        puts "1.Display using color 2.Display using floor and lot numbers"
        case gets.to_i
         when 1
            col = gets.to_str
            ct=0
            for i in 0..floors-1
                for j in 0..lots-1
                 if color[i][j] == col
                    ct = ct+1
                 end
                end
                puts "#{ct}"
           end
         when 2
           puts "enter floor,lot number"
           fl = gets.to_i
           lt = gets.to_i
           for x in fl-1..fl-1
              for y in lt-1..lt-1
                if name[x][y] == nil
                    puts "empty lot"
                else
                puts "Name : #{name[x][y]}"
                puts "Color : #{color[x][y]}"
                puts "Number : #{number[x][y]}"
                end
              end
           end
        end
       when 4
        exit
   end 
end