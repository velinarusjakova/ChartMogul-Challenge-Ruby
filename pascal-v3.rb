# factorial method
def fact(n)
  (1..n).reduce(:*)
end

# binomial theorem, n choose k
def binomial(n,k)
  return 1 if n-k <= 0
  return 1 if k <= 0
  fact(n) / ( fact(k) * fact( n - k ) )
end

def pascal(row_num)
  (0..row_num).map { |e| binomial(row_num, e) }
end

print pascal(ARGV[0].to_i)
print "\n"