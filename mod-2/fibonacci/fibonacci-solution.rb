#Iterative Solution
def fib(n)
  fibo = [0, 1, 1]
  return fib[n] if n < 3
  for num in (3..n)
    fib[num] = fib[num-1] + fib[num-2]
    puts "fib[#{num}] is #{fib[num]}"
  end
  return fib[n]
end

# Dynamic Programming Solution (Refactor of iterative solution)
def fib(n)
  arr = [0, 1]
  for i in 2..n do
    arr << (arr[i - 2] + arr[i - 1])
  end
  return arr[n]
end

# Recursive Solution
def fib(n)
     n <= 1 ? n : (fib(n - 1) + fib(n - 2))
end

# Recursion w/ Memoization
def fib(n)
  return 0 if n == 0
  return 1 if n <= 1
  @fibo ||= {}
  return @fibo[n] if @fibo[n]
  @fibo[n] = fib(n - 1) + fib(n - 2)
end
