require 'test_helper'

class NotationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notations_index_url
    assert_response :success
  end

  test "should get show" do
    get notations_show_url
    assert_response :success
  end

  test "should get new" do
    get notations_new_url
    assert_response :success
  end

  test "should get create" do
    get notations_create_url
    assert_response :success
  end

  test "should get edit" do
    get notations_edit_url
    assert_response :success
  end

  test "should get update" do
    get notations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get notations_destroy_url
    assert_response :success
  end

end
