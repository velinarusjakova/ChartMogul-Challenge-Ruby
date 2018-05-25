# binomial coeficient identity
def pascal(n)
	*row = 1

	(0...n).each do |i|
		row << row[i] * (n - i) / (i+1)
	end

	return row
end

print pascal(ARGV[0].to_i)
print "\n"
