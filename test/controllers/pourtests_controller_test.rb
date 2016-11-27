require 'test_helper'

class PourtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pourtest = pourtests(:one)
  end

  test "should get index" do
    get pourtests_url
    assert_response :success
  end

  test "should get new" do
    get new_pourtest_url
    assert_response :success
  end

  test "should create pourtest" do
    assert_difference('Pourtest.count') do
      post pourtests_url, params: { pourtest: { name: @pourtest.name, surname: @pourtest.surname } }
    end

    assert_redirected_to pourtest_url(Pourtest.last)
  end

  test "should show pourtest" do
    get pourtest_url(@pourtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_pourtest_url(@pourtest)
    assert_response :success
  end

  test "should update pourtest" do
    patch pourtest_url(@pourtest), params: { pourtest: { name: @pourtest.name, surname: @pourtest.surname } }
    assert_redirected_to pourtest_url(@pourtest)
  end

  test "should destroy pourtest" do
    assert_difference('Pourtest.count', -1) do
      delete pourtest_url(@pourtest)
    end

    assert_redirected_to pourtests_url
  end
end
