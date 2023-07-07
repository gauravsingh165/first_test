 def question(arr)
    n=arr.length-1
   if arr[n]==arr[n-1]
       puts "nothing"
   else
       puts arr[n]
   end
    
end
puts question(["Like", "Dislike", "Dislike"])