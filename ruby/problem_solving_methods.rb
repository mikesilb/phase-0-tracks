=begin 
MPP 5.6
Sean Kung and Louie Chen
=end
#loop through the array and find the index for if array[index] == value
def search_array(arr, value)
	i = 0
	index = nil
	while i < arr.length
		if arr[i] == value
			index = i
		end
		i += 1
	end
	index
end

array = [12, 20, 45, 1, 0, 5]
p search_array(array, 100)

# fib_array = [0,1]
# fib(value) must be greater than 3. then while i < value add the two digits before the index
# fib_array[i-1] + fib_array[i-2]

def fib(value)
	fib_arr = [0,1]
	i = 2
	while i < value
		fib_arr[i] = fib_arr[i - 1] + fib_arr[i - 2]
		i += 1
	end
	fib_arr
end

p fib(6)

if fib(100)[-1] == 218922995834555169026
	puts "true"
end