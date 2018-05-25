# binomial coeficient identity
def pascal(n)
	*row = 1
	row[n] = 1

	(0...n/2).each do |i|
		el = row[i] * (n - i) / (i+1)
		row[i+1] = row[n-i-1] = el
	end

	return row
end

print pascal(ARGV[0].to_i)
print "\n"
