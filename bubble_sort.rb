def bubble_sort(nums)
  len=nums.length
  i=0

   while i<len-1 
   j=0
      while j<len-1
             if nums[j]>nums[j+1]
          nums[j],nums[j+1]=nums[j+1],nums[j]
          
           else
            j+=1
          
          end

          
      end
     
    i+=1
  end
  print  nums
end
nums=[1,5,6,7,2,8,3,9,4]
bubble_sort(nums)




