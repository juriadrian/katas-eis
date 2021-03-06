require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |arg1, arg2|
  visit "/mipagina"
  fill_in(:tableroAncho, :with => arg1)
  fill_in(:tableroAlto, :with => arg2)
  click_button "BTCreateBoard"
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
  fill_in(:xyLarge, :with => arg1)
  click_button "BTCreateLargeShip"
end

Given(/^I shoot to position "(.*?)"$/) do |arg1|
  fill_in(:xyShoot, :with => arg1)
  click_button "BTShootAt"
end

Then(/^I get hit$/) do
	expect(page.has_content?("Acertado")).to eq true
end

Then(/^I get water$/) do
  expect(page.has_content?("Agua")).to eq false
end

Then(/^I get sink$/) do
  expect(page.has_content?("Hundido")).to eq true
end
