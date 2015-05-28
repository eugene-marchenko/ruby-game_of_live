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


end
