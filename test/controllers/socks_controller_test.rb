require 'test_helper'

class SocksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get socks_index_url
    assert_response :success
  end

  test "should get show" do
    get socks_show_url
    assert_response :success
  end

  test "should get new" do
    get socks_new_url
    assert_response :success
  end

  test "should get create" do
    get socks_create_url
    assert_response :success
  end

  test "should get edit" do
    get socks_edit_url
    assert_response :success
  end

  test "should get update" do
    get socks_update_url
    assert_response :success
  end

  test "should get delete" do
    get socks_delete_url
    assert_response :success
  end

end
