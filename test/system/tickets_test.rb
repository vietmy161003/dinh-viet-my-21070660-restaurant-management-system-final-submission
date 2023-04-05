require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Date", with: @ticket.date
    fill_in "Deleted", with: @ticket.deleted
    fill_in "Description", with: @ticket.description
    fill_in "Poster", with: @ticket.poster_id
    fill_in "Status", with: @ticket.status
    fill_in "Subject", with: @ticket.subject
    fill_in "Type", with: @ticket.type
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Date", with: @ticket.date
    fill_in "Deleted", with: @ticket.deleted
    fill_in "Description", with: @ticket.description
    fill_in "Poster", with: @ticket.poster_id
    fill_in "Status", with: @ticket.status
    fill_in "Subject", with: @ticket.subject
    fill_in "Type", with: @ticket.type
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
