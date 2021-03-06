def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(arr)
  s = 0
  arr.each { |a| s += a }
  s
end

def multiply(*nums)
  s = 1
  nums.each { |a| s *= a }
  s
end

def power(b,e)
  b**e
end

def factorial(n)
  return 1 if (n == 0 || n == 1)
  r = 1
  for i in 2..n do
    r *= i
  end
  r
end
