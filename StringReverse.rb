class StringReverse
    str = gets.chomp
    len = str.length;
    puts "#{len}"
    for x in 0..len
        puts "#{str[len-x]}" 
    end
end

