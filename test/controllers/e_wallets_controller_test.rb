require "test_helper"

class EWalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e_wallet = e_wallets(:one)
  end

  test "should get index" do
    get e_wallets_url
    assert_response :success
  end

  test "should get new" do
    get new_e_wallet_url
    assert_response :success
  end

  test "should create e_wallet" do
    assert_difference("EWallet.count") do
      post e_wallets_url, params: { e_wallet: { balance: @e_wallet.balance, customer: @e_wallet.customer, customer_name: @e_wallet.customer_name } }
    end

    assert_redirected_to e_wallet_url(EWallet.last)
  end

  test "should show e_wallet" do
    get e_wallet_url(@e_wallet)
    assert_response :success
  end

  test "should get edit" do
    get edit_e_wallet_url(@e_wallet)
    assert_response :success
  end

  test "should update e_wallet" do
    patch e_wallet_url(@e_wallet), params: { e_wallet: { balance: @e_wallet.balance, customer: @e_wallet.customer, customer_name: @e_wallet.customer_name } }
    assert_redirected_to e_wallet_url(@e_wallet)
  end

  test "should destroy e_wallet" do
    assert_difference("EWallet.count", -1) do
      delete e_wallet_url(@e_wallet)
    end

    assert_redirected_to e_wallets_url
  end
end
