require "application_system_test_case"

class OrderDetailsTest < ApplicationSystemTestCase
  setup do
    @order_detail = order_details(:one)
  end

  test "visiting the index" do
    visit order_details_url
    assert_selector "h1", text: "Order details"
  end

  test "should create order detail" do
    visit order_details_url
    click_on "New order detail"

    fill_in "Item", with: @order_detail.item_id
    fill_in "Order", with: @order_detail.order_id
    fill_in "Price", with: @order_detail.price
    fill_in "Quantity", with: @order_detail.quantity
    click_on "Create Order detail"

    assert_text "Order detail was successfully created"
    click_on "Back"
  end

  test "should update Order detail" do
    visit order_detail_url(@order_detail)
    click_on "Edit this order detail", match: :first

    fill_in "Item", with: @order_detail.item_id
    fill_in "Order", with: @order_detail.order_id
    fill_in "Price", with: @order_detail.price
    fill_in "Quantity", with: @order_detail.quantity
    click_on "Update Order detail"

    assert_text "Order detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Order detail" do
    visit order_detail_url(@order_detail)
    click_on "Destroy this order detail", match: :first

    assert_text "Order detail was successfully destroyed"
  end
end
