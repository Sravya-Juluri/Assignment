class MergeSort
size = gets.to_i
    arr = Array.new
    for x in 0..size-1
    arr[x] = gets.to_i
    end
    low = 0
    high = arr.size-1
def merge(a,low,m,high)
    n1 = m-l+1
    left = Array.new(n1) 
    n2 = r-m
    right = Array.new(n2) 
    for i in 0...n1         
        left[i]= a[l+i]
    end
    for i in 0...n2          
        right[i]= a[m+1+i]
    end
    i=0
    j=0
    for k in low..high
        if i>=n1
            a[k]=right[j]
            j+=1
        elsif j>=n2
            a[k]=left[i]
            i+=1
        elsif left[i]>right[j]
            a[k]=right[j]
            j+=1
        else
            a[k]=left[i]
            i+=1
        end
    end
end 
 def merge_sort(a,low,high)
     if low<high
         m=low+(high-l)/2
         merge_sort(a,low,m)
         merge_sort(a,m+1,high)
         merge(a,low,m,high)
       end
  end
 merge_sort(arr,low,high)
  puts "#{arr}"
end