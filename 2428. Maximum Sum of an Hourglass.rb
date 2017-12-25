#* 2428. Maximum Sum of an Hourglass
grid = [[6,2,1,3],[4,2,1,5],[9,2,8,7],[4,1,2,9]]
# @param {Integer[][]} grid
# @return {Integer}
#*
def max_sum(grid)
  (0..grid.size-3).map { |i| (0..grid[0].size-3).map { |j| grid[i][j] + grid[i][j+1] + grid[i][j+2] + grid[i+1][j+1] + grid[i+2][j] + grid[i+2][j+1] + grid[i+2][j+2] } }.flatten.max
end
p max_sum(grid)
