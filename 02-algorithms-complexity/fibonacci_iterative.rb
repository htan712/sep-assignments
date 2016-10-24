def fib(n)
	fibarr = [0,1]
	while fibarr.length <= n
		fibarr.push(fibarr.reduce(:+))
	end
	return fibarr[n]
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)