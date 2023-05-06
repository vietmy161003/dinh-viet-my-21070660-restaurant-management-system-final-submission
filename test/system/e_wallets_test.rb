require "application_system_test_case"

class EWalletsTest < ApplicationSystemTestCase
  setup do
    @e_wallet = e_wallets(:one)
  end

  test "visiting the index" do
    visit e_wallets_url
    assert_selector "h1", text: "E wallets"
  end

  test "should create e wallet" do
    visit e_wallets_url
    click_on "New e wallet"

    fill_in "Balance", with: @e_wallet.balance
    fill_in "Customer", with: @e_wallet.customer
    fill_in "Customer name", with: @e_wallet.customer_name
    click_on "Create E wallet"

    assert_text "E wallet was successfully created"
    click_on "Back"
  end

  test "should update E wallet" do
    visit e_wallet_url(@e_wallet)
    click_on "Edit this e wallet", match: :first

    fill_in "Balance", with: @e_wallet.balance
    fill_in "Customer", with: @e_wallet.customer
    fill_in "Customer name", with: @e_wallet.customer_name
    click_on "Update E wallet"

    assert_text "E wallet was successfully updated"
    click_on "Back"
  end

  test "should destroy E wallet" do
    visit e_wallet_url(@e_wallet)
    click_on "Destroy this e wallet", match: :first

    assert_text "E wallet was successfully destroyed"
  end
end
