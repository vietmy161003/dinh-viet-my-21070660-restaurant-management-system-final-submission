require "application_system_test_case"

class WalletDetailsTest < ApplicationSystemTestCase
  setup do
    @wallet_detail = wallet_details(:one)
  end

  test "visiting the index" do
    visit wallet_details_url
    assert_selector "h1", text: "Wallet details"
  end

  test "should create wallet detail" do
    visit wallet_details_url
    click_on "New wallet detail"

    fill_in "Balance", with: @wallet_detail.balance
    fill_in "Number", with: @wallet_detail.number
    fill_in "Wallet", with: @wallet_detail.wallet_id
    click_on "Create Wallet detail"

    assert_text "Wallet detail was successfully created"
    click_on "Back"
  end

  test "should update Wallet detail" do
    visit wallet_detail_url(@wallet_detail)
    click_on "Edit this wallet detail", match: :first

    fill_in "Balance", with: @wallet_detail.balance
    fill_in "Number", with: @wallet_detail.number
    fill_in "Wallet", with: @wallet_detail.wallet_id
    click_on "Update Wallet detail"

    assert_text "Wallet detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Wallet detail" do
    visit wallet_detail_url(@wallet_detail)
    click_on "Destroy this wallet detail", match: :first

    assert_text "Wallet detail was successfully destroyed"
  end
end
