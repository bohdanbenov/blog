require 'test_helper'

class BloggsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogg = bloggs(:one)
  end

  test "should get index" do
    get bloggs_url
    assert_response :success
  end

  test "should get new" do
    get new_blogg_url
    assert_response :success
  end

  test "should create blogg" do
    assert_difference('Blogg.count') do
      post bloggs_url, params: { blogg: { body: @blogg.body, title: @blogg.title } }
    end

    assert_redirected_to blogg_url(Blogg.last)
  end

  test "should show blogg" do
    get blogg_url(@blogg)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogg_url(@blogg)
    assert_response :success
  end

  test "should update blogg" do
    patch blogg_url(@blogg), params: { blogg: { body: @blogg.body, title: @blogg.title } }
    assert_redirected_to blogg_url(@blogg)
  end

  test "should destroy blogg" do
    assert_difference('Blogg.count', -1) do
      delete blogg_url(@blogg)
    end

    assert_redirected_to bloggs_url
  end
end
