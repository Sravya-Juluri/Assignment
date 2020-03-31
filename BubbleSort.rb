class BubbleSort
    n = gets.to_i
    a = Array.new
    for x in 0..n-1
    a[x] = gets.to_i
    end
    for j in 0..n-1
        for i in 0..n-1
         if a[i+1]==nil
            break
          end
         if a[i]>a[i+1]
          a[i],a[i+1] = a[i+1],a[i]
         end
        end
    end
    for x in 0..n-1
        puts "#{a[x]}"
    end
end
