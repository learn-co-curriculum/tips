require 'pry'


def fibonacci(n)
  fib = [0,1,1]
  return fib[n] if n < 3
  for num in (3..n)
    fib[num] = fib[num-1] + fib[num-2]
    puts "fib[#{num}] is #{fib[num]}"
  end
  return fib[n]
end

def fib_recursive(n)
  return 0 if n == 0
  return 1 if n < 3
  return fib_recursive(n-2) + fib_recursive(n-1)
end

Pry.start
