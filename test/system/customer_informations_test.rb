require "application_system_test_case"

class CustomerInformationsTest < ApplicationSystemTestCase
  setup do
    @customer_information = customer_informations(:one)
  end

  test "visiting the index" do
    visit customer_informations_url
    assert_selector "h1", text: "Customer information"
  end

  test "should create customer information" do
    visit customer_informations_url
    click_on "New customer information"

    fill_in "Address", with: @customer_information.address
    fill_in "Contact", with: @customer_information.contact
    fill_in "Deleted", with: @customer_information.deleted
    fill_in "Email", with: @customer_information.email
    fill_in "Name", with: @customer_information.name
    fill_in "Password", with: @customer_information.password
    fill_in "Role", with: @customer_information.role
    fill_in "Username", with: @customer_information.username
    fill_in "Verified", with: @customer_information.verified
    click_on "Create Customer information"

    assert_text "Customer information was successfully created"
    click_on "Back"
  end

  test "should update Customer information" do
    visit customer_information_url(@customer_information)
    click_on "Edit this customer information", match: :first

    fill_in "Address", with: @customer_information.address
    fill_in "Contact", with: @customer_information.contact
    fill_in "Deleted", with: @customer_information.deleted
    fill_in "Email", with: @customer_information.email
    fill_in "Name", with: @customer_information.name
    fill_in "Password", with: @customer_information.password
    fill_in "Role", with: @customer_information.role
    fill_in "Username", with: @customer_information.username
    fill_in "Verified", with: @customer_information.verified
    click_on "Update Customer information"

    assert_text "Customer information was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer information" do
    visit customer_information_url(@customer_information)
    click_on "Destroy this customer information", match: :first

    assert_text "Customer information was successfully destroyed"
  end
end
