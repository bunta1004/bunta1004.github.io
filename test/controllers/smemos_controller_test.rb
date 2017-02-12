require 'test_helper'

class SmemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smemo = smemos(:one)
  end

  test "should get index" do
    get smemos_url
    assert_response :success
  end

  test "should get new" do
    get new_smemo_url
    assert_response :success
  end

  test "should create smemo" do
    assert_difference('Smemo.count') do
      post smemos_url, params: { smemo: { memo: @smemo.memo, name: @smemo.name, title: @smemo.title } }
    end

    assert_redirected_to smemo_url(Smemo.last)
  end

  test "should show smemo" do
    get smemo_url(@smemo)
    assert_response :success
  end

  test "should get edit" do
    get edit_smemo_url(@smemo)
    assert_response :success
  end

  test "should update smemo" do
    patch smemo_url(@smemo), params: { smemo: { memo: @smemo.memo, name: @smemo.name, title: @smemo.title } }
    assert_redirected_to smemo_url(@smemo)
  end

  test "should destroy smemo" do
    assert_difference('Smemo.count', -1) do
      delete smemo_url(@smemo)
    end

    assert_redirected_to smemos_url
  end
end
