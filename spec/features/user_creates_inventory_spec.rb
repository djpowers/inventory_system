require 'spec_helper'

feature 'Employee adds inventory' do

  # As a food service employee
  # I want to receive inventory
  # So that it can be recorded that we have food items
  # Acceptance Criteria:

  # I must specify a title, description, and quantity of the food item
  # If I do not specify the required information, I am prompted to fix errors and to resubmit
  # If I specify the required information, my inventory entry is recorded.

  it 'creates a valid inventory item' do

    visit new_inventory_path

    fill_in "Title", with: "Processed Meat Product"
    fill_in "Description", with: "A product that is not meat, but will be sold as meat."
    fill_in "Quantity", with: 500

    click_on "Create Inventory"
    expect(page).to have_content "Inventory was successfully created."

  end

  it 'rejects an invalid inventory item' do

    visit new_inventory_path

    fill_in "Title", with: ""
    fill_in "Description", with: ""
    fill_in "Quantity", with: ""

    click_on "Create Inventory"
    expect(page).to have_content "prevented this inventory from being saved"

  end


end
