require 'test_helper'

class LogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get log_index_url
    assert_response :success
  end

  test "should get new" do
    get log_new_url
    assert_response :success
  end

  test "should get create" do
    get log_create_url
    assert_response :success
  end

  test "should get show" do
    get log_show_url
    assert_response :success
  end

  test "should get edit" do
    get log_edit_url
    assert_response :success
  end

  test "should get update" do
    get log_update_url
    assert_response :success
  end

  test "should get destroy" do
    get log_destroy_url
    assert_response :success
  end

end
