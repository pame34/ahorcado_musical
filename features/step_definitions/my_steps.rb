
Given(/^abro la aplicacion$/) do
  visit "/"
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver "([^"]*)" guiones bajos$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^ingreso la letra "([^"]*)"$/) do |letra|
  fill_in("LetraBuscar", :with => letra)
end

Given(/^seleccion el boton "([^"]*)"$/) do |nombreBoton|
  click_button(nombreBoton)
end