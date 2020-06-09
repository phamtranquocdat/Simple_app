require 'test_helper'

class CateloriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catelory = catelories(:one)
  end

  test "should get index" do
    get catelories_url
    assert_response :success
  end

  test "should get new" do
    get new_catelory_url
    assert_response :success
  end

  test "should create catelory" do
    assert_difference('Catelory.count') do
      post catelories_url, params: { catelory: { name: @catelory.name } }
    end

    assert_redirected_to catelory_url(Catelory.last)
  end

  test "should show catelory" do
    get catelory_url(@catelory)
    assert_response :success
  end

  test "should get edit" do
    get edit_catelory_url(@catelory)
    assert_response :success
  end

  test "should update catelory" do
    patch catelory_url(@catelory), params: { catelory: { name: @catelory.name } }
    assert_redirected_to catelory_url(@catelory)
  end

  test "should destroy catelory" do
    assert_difference('Catelory.count', -1) do
      delete catelory_url(@catelory)
    end

    assert_redirected_to catelories_url
  end
end
