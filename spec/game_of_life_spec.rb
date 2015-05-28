require_relative '../lib/game_of_life'
require 'rspec'

describe 'Game of life' do
	context 'World' do
		subject { World.new }
		it 'should create a new world subject' do
			expect(subject.nil?).to eql(false)
		end
		it 'should respond to proper method' do
			expect(subject).respond_to?(:rows)
			expect(subject).respond_to?(:cols)
      expect(subject).respond_to?(:cell_grid)
    end
    it 'should create proper cell grid on initialization' do
      expect(subject.cell_grid.is_a?(Array)).to eql(true)
      subject.cell_grid.each do |array|
        expect(array.is_a?(Array)).to eql(true)
        array.each do |col|
          expect(col.is_a?(Cell)).to eql(true)
        end
      end
    end
  end

  context 'Cell' do
    subject { Cell.new }
    it 'should create a new cell object' do
      expect(subject.nil?).to eql(false)
    end
    it 'should respond to proper method' do
      expect(subject).respond_to?(:x)
      expect(subject).respond_to?(:y)
      expect(subject).respond_to?(:alive)
    end
    it 'should initialize properly' do
      expect(subject.alive).to eql(false)
      expect(subject.x).to eql(0)
      expect(subject.y).to eql(0)
    end
  end

  context 'Rules' do
    context 'Rule 1: Any live cell with fewer that two
                neigs dies, as if caused by under-population' do
      
    end
  end

end

