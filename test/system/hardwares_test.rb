require "application_system_test_case"

class HardwaresTest < ApplicationSystemTestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "visiting the index" do
    visit hardwares_url
    assert_selector "h1", text: "Hardwares"
  end

  test "creating a Hardware" do
    visit hardwares_url
    click_on "New Hardware"

    fill_in "Battery", with: @hardware.battery
    fill_in "Code number", with: @hardware.code_number
    fill_in "Date of purchase", with: @hardware.date_of_purchase
    fill_in "Describe", with: @hardware.describe
    fill_in "Disk", with: @hardware.disk
    fill_in "Dvd", with: @hardware.dvd
    fill_in "Equipment", with: @hardware.equipment
    fill_in "Model", with: @hardware.model
    fill_in "Name", with: @hardware.name
    fill_in "Operating system", with: @hardware.operating_system
    fill_in "Price", with: @hardware.price
    fill_in "Procesor", with: @hardware.procesor
    fill_in "Purchase price", with: @hardware.purchase_price
    fill_in "Ram", with: @hardware.ram
    fill_in "Sale date", with: @hardware.sale_date
    fill_in "Screen", with: @hardware.screen
    fill_in "Sn", with: @hardware.sn
    check "Sold" if @hardware.sold
    fill_in "Video card", with: @hardware.video_card
    fill_in "Warranty", with: @hardware.warranty
    click_on "Create Hardware"

    assert_text "Hardware was successfully created"
    click_on "Back"
  end

  test "updating a Hardware" do
    visit hardwares_url
    click_on "Edit", match: :first

    fill_in "Battery", with: @hardware.battery
    fill_in "Code number", with: @hardware.code_number
    fill_in "Date of purchase", with: @hardware.date_of_purchase
    fill_in "Describe", with: @hardware.describe
    fill_in "Disk", with: @hardware.disk
    fill_in "Dvd", with: @hardware.dvd
    fill_in "Equipment", with: @hardware.equipment
    fill_in "Model", with: @hardware.model
    fill_in "Name", with: @hardware.name
    fill_in "Operating system", with: @hardware.operating_system
    fill_in "Price", with: @hardware.price
    fill_in "Procesor", with: @hardware.procesor
    fill_in "Purchase price", with: @hardware.purchase_price
    fill_in "Ram", with: @hardware.ram
    fill_in "Sale date", with: @hardware.sale_date
    fill_in "Screen", with: @hardware.screen
    fill_in "Sn", with: @hardware.sn
    check "Sold" if @hardware.sold
    fill_in "Video card", with: @hardware.video_card
    fill_in "Warranty", with: @hardware.warranty
    click_on "Update Hardware"

    assert_text "Hardware was successfully updated"
    click_on "Back"
  end

  test "destroying a Hardware" do
    visit hardwares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hardware was successfully destroyed"
  end
end
