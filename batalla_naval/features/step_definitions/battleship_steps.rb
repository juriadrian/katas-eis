require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |arg1, arg2|
  @board = Board.new arg1, arg2
end

Given(/^I create a small ship in position "(.*?)"$/) do |arg1|
  @board.createSmallShipInPosition(arg1)
end

Then(/^position "(.*?)" is not empty$/) do |arg1|
  @board.isEmptyPosition?(arg1).should eq false
end

Given(/^I create a large ship in position "(.*?)"$/) do |arg1|
  @board.createLargeShipInPosition(arg1)
end




Given(/^a large ship in position: "(.*?)"$/) do |arg1|
  @board.createLargeShipInPosition(arg1)
end

Given(/^I shoot to position "(.*?)"$/) do |arg1|
  @board.shootAtPosition(arg1)
end

Then(/^I get hit$/) do
  pending # express the regexp above with the code you wish you had
end

