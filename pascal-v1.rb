
# recursive method
def rec(i,j)
	if (i == 0 || j == 0 || j == i)
		return 1
	end
	if(i ==1 && (j == 0 || j == 1))
		return 1
	end
	return rec(i-1, j-1) + rec(i-1, j)
end

def pascal(n)
	row = []
	(0..n).each do |i|
		row[i] = rec(n,i)
	end
	return row
end

print pascal(ARGV[0].to_i)
print "\n"