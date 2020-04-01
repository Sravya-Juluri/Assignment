class QuickSort
size = gets.to_i
arr = Array.new
for x in 0..size-1
arr[x] = gets.to_i
end
 def partition(arr,low,high)
    m = arr[high]
    i = low-1
    for j in low..high-1
        if arr[j] <= m
            i=i+1
            arr[i],arr[j] = arr[j],arr[i]
        end
    end
    arr[i+1],arr[high] = arr[high],arr[i+1]
    return i+1
 end
 def qsort(arr,low,high)
    if low < high
       pi=partition(arr,low,high)
        qsort(arr,low,pi-1)
        qsort(arr,pi+1,high)
    end
 end
 qsort(arr,0,size-1)
 puts "#{arr}"
end