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

    puts i
  end

  print nums
end
nums = [1, 5, 6, 3, 2, 9, 4, 8, 7]
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

  end

  print words
end

bubble_sort_by(['microverse', 'is', 'the', 'best', 'techonogy', 'bootcamp', 'in', 'the', 'world']) { |left, right|
  left.length - right.length
}

