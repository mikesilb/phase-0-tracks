def search_array(array, number)
  counter = 0
  while counter < array.length
    if array[counter] == number
      puts counter
    end
    counter +=1
  end
end

def fib(num)
  fib_array = [0,1]
  counter_0 = 0
  counter_1 = 1
  while counter_0 < num - 2
    fib_array << fib_array[counter_0] + fib_array[counter_1]
    counter_0 += 1
    counter_1 += 1
  end
  p fib_array
  puts fib_array.last == 218922995834555169026
end

#fib(100)
#p search_array([4, 2, 3, 5], 5)

=begin
Pseudocode for bubble sort

I. First compare index 0 and index 1.
  A. Determine which one is higher.  Lower will remain at the left/lower index between these two while higher is at the right/high index.
II.  Pivot one space and compare values for index 1 and index 2..
  A.  Do same operation as I.A.
III.  Repeat for entire length of array
IV. Then go back to beginning of array and repeat steps I-III until read end of array
Repeat step IV until for each comparison the left index is always lower than the right index.


=end
#In the research process we found the Ruby code required to run a Bubble Sort.

# How this bubble sort works, is using  .times method nested inside a loop that will only break if the variable swapped remains false throughout the .times loop. Until the loop breaks, it will go through every index position and swap it with its adjacent position only if the first position is bigger. When the loop breaks, the array will be sorted in ascending order.

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
        puts swapped
      end
    end

    break if not swapped
  end

  p array
end

bubble_sort([42, 5, 1, 26, 225, 3, 72, 25])
bubble_sort([42, 41, 40, 39, 38, 37, 36, 35])
bubble_sort([4,3,2,1,0])