def lattice_path(grid_size)
	#create and prep the grid
	grid = Array.new(grid_size + 1) {Array.new(grid_size + 1, 0)}
	prep_grid(grid)
	fill_grid(grid)
	# print_grid(grid)
	return grid[grid_size][grid_size]

end

# def print_grid(grid)
# 	grid.each do |row|
# 		row.each do |cell|
# 			print "#{cell} "
# 		end
# 		puts "\n"
# 	end
# end

def prep_grid(grid)
	max = grid.length
	(0..max).each {|col| grid[0][col] = 1}
	(0..max).each {|row| grid[row][0] = 1}
end

#By filling outside the grid with all ones and then running through the grid adding the cell above and to the left 
#The last cell in the grid will be the answer.
def fill_grid(grid)
	max = grid.length - 1
	(1..max).each do |row|
		(1..max).each do |col|
			grid[row][col] = (grid[row][col - 1]) + (grid[row -1][col])
		end
	end
end

puts lattice_path(20)