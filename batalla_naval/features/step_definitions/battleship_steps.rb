require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |arg1, arg2|
  visit "/mipagina"
  fill_in(:tableroAncho, :with => arg1)
  fill_in(:tableroAlto, :with => arg2)
  click_button "BTCrearTablero"
end

Given(/^I create a small ship in position "(.*?)"$/) do |arg1|
  fill_in(:xy, :with => arg1)
  click_button "BTCreateSmallShip"
end

Then(/^position "(.*?)" is not empty$/) do |arg1|
	expect(page.has_content?(arg1)).to eq false
end

Given(/^I create a large ship in position "(.*?)"$/) do |arg1|
  fill_in(:xyLarge, :with => arg1)
  click_button "BTCreateLargeShip"
end




Given(/^a large ship in position: "(.*?)"$/) do |arg1|
  @board.createLargeShipInPosition(arg1)
end

Given(/^I shoot to position "(.*?)"$/) do |arg1|
  @board.shootAtPosition(arg1)
end

Then(/^I get hit$/) do
  @board.getHit()
end

Then(/^I get water$/) do
  @board.getWater()
end

Then(/^I get sink$/) do
  @board.getSink()
end
