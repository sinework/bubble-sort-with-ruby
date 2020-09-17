def bubble_sort(nums)
  len = nums.length
  i = 0
  swap = true
  while i < len - 1
    swap = false
    j = 0
    while j < len - 1
      if nums[j] > nums[j + 1]
        nums[j], nums[j + 1] = nums[j + 1], nums[j]
        swap = true
        j += 1
      else

        j += 1

      end

    end

    i += 1
    break if swap == false

    print " \n On the #{i} iteration the result is: \n #{nums} \n"
  end
end
nums = [1, 5, 6, 3, 2, 9, 4, 8, 7]

puts "\n \n ---------The first sorting method---------\n \n"
bubble_sort(nums)
# /////////////////////////////////////////////////////
def bubble_sort_by(words)
  len = words.length
  i = 0
  swap = true
  while i < len - 1
    swap = false
    j = 0
    while j < len - 1

      if yield(words[j], words[j + 1]).positive?

        words[j], words[j + 1] = words[j + 1], words[j]

        swap = true

        j += 1

      else
        j += 1

      end

    end
    i += 1
    break if swap == false

    print "\n on the #{i} iteration the result is: \n #{words} \n"
  end
end
puts "\n \n ---------The Second sorting method---------\n \n"
bubble_sort_by(%w[microverse is the best techonogy bootcamp in the world]) do |left, right|
  left.length - right.length
end
