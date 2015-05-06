require_relative '../../app/models/Board.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @board = Board.new 5,5
  end

  it 'create a Board' do
    expect(@board.kind_of? Board).to eq true
  end

  it 'should create a 5x5 Board' do
    expect(@board.size[0]).to eq 5
    expect(@board.size[1]).to eq 5
  end

  it 'should split the coords to two numbers' do
    expect(@board.createLocation("3:3")).to eq [3, 3]
  end


  it 'should create a small ship in position 3:3' do
    @board.createSmallShipInPosition("3:3")
    expect(@board.ships.size).to eq 1
    expect(@board.isEmptyPosition?("3:3")).to eq false
  end

  it 'should not be empty if my large boat is in position 3:3' do
    @board.createLargeShipInPosition("3:3")
    expect(@board.isEmptyPosition?("3:3")).to eq false
  end

  it 'should return 2 ships in the board' do
    expect(@board.ships.size).to eq 0
    @board.createSmallShipInPosition("1:1")
    expect(@board.ships.size).to eq 1
    @board.createLargeShipInPosition("3:3")
    expect(@board.ships.size).to eq 2    
  end

  it 'should not be empty at location 3:4' do
    @board.createLargeShipInPosition("3:3")
    expect(@board.isEmptyPosition?("3:3")).to eq false
    expect(@board.isEmptyPosition?("3:4")).to eq false
    expect(@board.isEmptyPosition?("3:5")).to eq true
  end

  it 'should miss the shot when there is no ship in that location'do
    expect(@board.shootAtPosition("3:3")).to eq false
  end

  it 'should hit the ship when there is a large ship in that location'do
    @board.createLargeShipInPosition("3:3")
    expect(@board.shootAtPosition("3:3")).to eq false
  end

end