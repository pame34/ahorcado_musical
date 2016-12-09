
Given(/^abro la aplicacion$/) do
  visit "/"
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver "([^"]*)" guiones bajos$/) do |texto|
  expect(page.body).to match /#{texto}/m
end
