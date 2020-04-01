puts "enter size of queue"
n = gets.to_i
que = Array.new
loop do
    puts "enter choice"
    puts "1.Enque
    2.Deque
    3.Display
    4.Exit"
    c = gets.to_i
    case c
    when 1
        if que.size!=n
            puts "enter element"
            que.push(gets.to_i)
        else
            puts "full"
            exit
        end
    when 2
        m = que.size
        for i in 0..n-1
           que[i] = que[i+1]
        end
        que.pop
    when 3
        for i in 0..n-1
            puts "#{que[i]}"
        end
    when 4
        exit
    end
end