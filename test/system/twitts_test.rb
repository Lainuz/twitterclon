require "application_system_test_case"

class TwittsTest < ApplicationSystemTestCase
  setup do
    @twitt = twitts(:one)
  end

  test "visiting the index" do
    visit twitts_url
    assert_selector "h1", text: "Twitts"
  end

  test "should create twitt" do
    visit twitts_url
    click_on "New twitt"

    fill_in "Description", with: @twitt.description
    fill_in "Username", with: @twitt.username
    click_on "Create Twitt"

    assert_text "Twitt was successfully created"
    click_on "Back"
  end

  test "should update Twitt" do
    visit twitt_url(@twitt)
    click_on "Edit this twitt", match: :first

    fill_in "Description", with: @twitt.description
    fill_in "Username", with: @twitt.username
    click_on "Update Twitt"

    assert_text "Twitt was successfully updated"
    click_on "Back"
  end

  test "should destroy Twitt" do
    visit twitt_url(@twitt)
    click_on "Destroy this twitt", match: :first

    assert_text "Twitt was successfully destroyed"
  end
end
