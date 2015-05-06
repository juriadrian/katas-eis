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

  it 'should create a small ship in position 3:3' do
    @board.createSmallShipInPosition(3, 3)
    expect(@board.ships.size).to eq 1
    expect(@board.isEmptyPosition?(3, 3)).to eq true
  end


end