require "test_helper"

class CustomerInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_information = customer_informations(:one)
  end

  test "should get index" do
    get customer_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_information_url
    assert_response :success
  end

  test "should create customer_information" do
    assert_difference("CustomerInformation.count") do
      post customer_informations_url, params: { customer_information: { address: @customer_information.address, contact: @customer_information.contact, deleted: @customer_information.deleted, email: @customer_information.email, name: @customer_information.name, password: @customer_information.password, role: @customer_information.role, username: @customer_information.username, verified: @customer_information.verified } }
    end

    assert_redirected_to customer_information_url(CustomerInformation.last)
  end

  test "should show customer_information" do
    get customer_information_url(@customer_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_information_url(@customer_information)
    assert_response :success
  end

  test "should update customer_information" do
    patch customer_information_url(@customer_information), params: { customer_information: { address: @customer_information.address, contact: @customer_information.contact, deleted: @customer_information.deleted, email: @customer_information.email, name: @customer_information.name, password: @customer_information.password, role: @customer_information.role, username: @customer_information.username, verified: @customer_information.verified } }
    assert_redirected_to customer_information_url(@customer_information)
  end

  test "should destroy customer_information" do
    assert_difference("CustomerInformation.count", -1) do
      delete customer_information_url(@customer_information)
    end

    assert_redirected_to customer_informations_url
  end
end
