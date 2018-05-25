# nested iteration
def pascal(n)
	row = [];
	row[0] = [1];
	row[1] = [1,1];

	(2..n+1).each do |i|
		row[i] = [1];
		(1..i-1).each do |j|
			row[i][j] = row[i-1][j] + row[i-1][j-1]
	        row[i].push(1);
	    end
	end

	return row[n]
end

print pascal(ARGV[0].to_i)
print "\n"
