require 'test_helper'

class CastlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get castles_index_url
    assert_response :success
  end

  test "should get show" do
    get castles_show_url
    assert_response :success
  end

  test "should get new" do
    get castles_new_url
    assert_response :success
  end

  test "should get create" do
    get castles_create_url
    assert_response :success
  end

  test "should get edit" do
    get castles_edit_url
    assert_response :success
  end

  test "should get update" do
    get castles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get castles_destroy_url
    assert_response :success
  end

end
