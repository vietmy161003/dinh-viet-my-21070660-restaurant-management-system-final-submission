require "test_helper"

class WalletDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallet_detail = wallet_details(:one)
  end

  test "should get index" do
    get wallet_details_url
    assert_response :success
  end

  test "should get new" do
    get new_wallet_detail_url
    assert_response :success
  end

  test "should create wallet_detail" do
    assert_difference("WalletDetail.count") do
      post wallet_details_url, params: { wallet_detail: { balance: @wallet_detail.balance, number: @wallet_detail.number, wallet_id: @wallet_detail.wallet_id } }
    end

    assert_redirected_to wallet_detail_url(WalletDetail.last)
  end

  test "should show wallet_detail" do
    get wallet_detail_url(@wallet_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallet_detail_url(@wallet_detail)
    assert_response :success
  end

  test "should update wallet_detail" do
    patch wallet_detail_url(@wallet_detail), params: { wallet_detail: { balance: @wallet_detail.balance, number: @wallet_detail.number, wallet_id: @wallet_detail.wallet_id } }
    assert_redirected_to wallet_detail_url(@wallet_detail)
  end

  test "should destroy wallet_detail" do
    assert_difference("WalletDetail.count", -1) do
      delete wallet_detail_url(@wallet_detail)
    end

    assert_redirected_to wallet_details_url
  end
end
