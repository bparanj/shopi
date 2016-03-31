require 'test_helper'

class JunksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @junk = junks(:one)
  end

  test "should get index" do
    get junks_url
    assert_response :success
  end

  test "should get new" do
    get new_junk_url
    assert_response :success
  end

  test "should create junk" do
    assert_difference('Junk.count') do
      post junks_url, params: { junk: {  } }
    end

    assert_redirected_to junk_path(Junk.last)
  end

  test "should show junk" do
    get junk_url(@junk)
    assert_response :success
  end

  test "should get edit" do
    get edit_junk_url(@junk)
    assert_response :success
  end

  test "should update junk" do
    patch junk_url(@junk), params: { junk: {  } }
    assert_redirected_to junk_path(@junk)
  end

  test "should destroy junk" do
    assert_difference('Junk.count', -1) do
      delete junk_url(@junk)
    end

    assert_redirected_to junks_path
  end
end
