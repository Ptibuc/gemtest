require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_index_url
    assert_response :success
  end

  test "should get show" do
    get site_show_url
    assert_response :success
  end

  test "should get new" do
    get site_new_url
    assert_response :success
  end

  test "should get edit" do
    get site_edit_url
    assert_response :success
  end

  test "should get create" do
    get site_create_url
    assert_response :success
  end

  test "should get update" do
    get site_update_url
    assert_response :success
  end

  test "should get destroy" do
    get site_destroy_url
    assert_response :success
  end

end
