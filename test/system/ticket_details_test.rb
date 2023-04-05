require "application_system_test_case"

class TicketDetailsTest < ApplicationSystemTestCase
  setup do
    @ticket_detail = ticket_details(:one)
  end

  test "visiting the index" do
    visit ticket_details_url
    assert_selector "h1", text: "Ticket details"
  end

  test "should create ticket detail" do
    visit ticket_details_url
    click_on "New ticket detail"

    fill_in "Cus", with: @ticket_detail.cus_id
    fill_in "Date", with: @ticket_detail.date
    fill_in "Description", with: @ticket_detail.description
    fill_in "Ticket", with: @ticket_detail.ticket_id
    click_on "Create Ticket detail"

    assert_text "Ticket detail was successfully created"
    click_on "Back"
  end

  test "should update Ticket detail" do
    visit ticket_detail_url(@ticket_detail)
    click_on "Edit this ticket detail", match: :first

    fill_in "Cus", with: @ticket_detail.cus_id
    fill_in "Date", with: @ticket_detail.date
    fill_in "Description", with: @ticket_detail.description
    fill_in "Ticket", with: @ticket_detail.ticket_id
    click_on "Update Ticket detail"

    assert_text "Ticket detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket detail" do
    visit ticket_detail_url(@ticket_detail)
    click_on "Destroy this ticket detail", match: :first

    assert_text "Ticket detail was successfully destroyed"
  end
end
