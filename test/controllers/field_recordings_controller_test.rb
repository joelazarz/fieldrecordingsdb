require 'test_helper'

class FieldRecordingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get field_recordings_index_url
    assert_response :success
  end

  test "should get show" do
    get field_recordings_show_url
    assert_response :success
  end

  test "should get new" do
    get field_recordings_new_url
    assert_response :success
  end

  test "should get create" do
    get field_recordings_create_url
    assert_response :success
  end

  test "should get edit" do
    get field_recordings_edit_url
    assert_response :success
  end

  test "should get update" do
    get field_recordings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get field_recordings_destroy_url
    assert_response :success
  end

end
