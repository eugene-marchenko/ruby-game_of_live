require_relative '../lib/cell'

class World
	attr_accessor :rows, :cols, :cell_grid
	def initialize(rows=3, cols=3)
    @rows = rows
    @cols = cols

    @cell_grid = Array.new(rows) do |row|
      Array.new(cols) do |col|
        Cell.new(col, row)
      end
    end
  end

  def live_neighbours_around_cell(cell)
    live_neighbours = []
    # North cells
    if cell.y > 0
      candidate = self.cell_grid[cell.y - 1][cell.x]
      live_neighbours << candidate if candidate.alive?
    end

    live_neighbours
  end


end
