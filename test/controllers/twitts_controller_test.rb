require "test_helper"

class TwittsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twitt = twitts(:one)
  end

  test "should get index" do
    get twitts_url
    assert_response :success
  end

  test "should get new" do
    get new_twitt_url
    assert_response :success
  end

  test "should create twitt" do
    assert_difference("Twitt.count") do
      post twitts_url, params: { twitt: { description: @twitt.description, username: @twitt.username } }
    end

    assert_redirected_to twitt_url(Twitt.last)
  end

  test "should show twitt" do
    get twitt_url(@twitt)
    assert_response :success
  end

  test "should get edit" do
    get edit_twitt_url(@twitt)
    assert_response :success
  end

  test "should update twitt" do
    patch twitt_url(@twitt), params: { twitt: { description: @twitt.description, username: @twitt.username } }
    assert_redirected_to twitt_url(@twitt)
  end

  test "should destroy twitt" do
    assert_difference("Twitt.count", -1) do
      delete twitt_url(@twitt)
    end

    assert_redirected_to twitts_url
  end
end
