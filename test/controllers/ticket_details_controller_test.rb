require "test_helper"

class TicketDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_detail = ticket_details(:one)
  end

  test "should get index" do
    get ticket_details_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_detail_url
    assert_response :success
  end

  test "should create ticket_detail" do
    assert_difference("TicketDetail.count") do
      post ticket_details_url, params: { ticket_detail: { cus_id: @ticket_detail.cus_id, date: @ticket_detail.date, description: @ticket_detail.description, ticket_id: @ticket_detail.ticket_id } }
    end

    assert_redirected_to ticket_detail_url(TicketDetail.last)
  end

  test "should show ticket_detail" do
    get ticket_detail_url(@ticket_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_detail_url(@ticket_detail)
    assert_response :success
  end

  test "should update ticket_detail" do
    patch ticket_detail_url(@ticket_detail), params: { ticket_detail: { cus_id: @ticket_detail.cus_id, date: @ticket_detail.date, description: @ticket_detail.description, ticket_id: @ticket_detail.ticket_id } }
    assert_redirected_to ticket_detail_url(@ticket_detail)
  end

  test "should destroy ticket_detail" do
    assert_difference("TicketDetail.count", -1) do
      delete ticket_detail_url(@ticket_detail)
    end

    assert_redirected_to ticket_details_url
  end
end
