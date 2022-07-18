def fib(n)
  return "Error" unless n > 0

  term1 = 0
  term2 = 1
  fib_array = []

  n.times do
    fib_array.push(term1)
    next_term = term1 + term2
    term1 = term2
    term2 = next_term
  end
  fib_array
end

def fib_recursive(n, array = [0,1])
  return 'Error' if n < 1

  return [0] if n == 1

  n == 2 ? array : fib_recursive(n - 1, array.push(array[-1] + array[-2]))
end