require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |arg1, arg2|
  @board = Board.new arg1, arg2
end

Given(/^I create a small ship in position "(.*?)"$/) do |arg1|
	xy = arg1.split(':')
	x = xy[0].to_i
	y = xy[1].to_i
  @board.createSmallShipInPosition(x, y)
end

Then(/^position "(.*?)" is not empty$/) do |arg1|
  @board.isEmptyPosition(arg1).should eq false
end
