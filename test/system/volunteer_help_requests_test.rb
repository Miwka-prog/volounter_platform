require "application_system_test_case"

class VolunteerHelpRequestsTest < ApplicationSystemTestCase
  setup do
    @volunteer_help_request = volunteer_help_requests(:one)
  end

  test "visiting the index" do
    visit volunteer_help_requests_url
    assert_selector "h1", text: "Volunteer Help Requests"
  end

  test "creating a Volunteer help request" do
    visit volunteer_help_requests_url
    click_on "New Volunteer Help Request"

    fill_in "City", with: @volunteer_help_request.city
    fill_in "Deadline", with: @volunteer_help_request.deadline
    fill_in "Description", with: @volunteer_help_request.description
    fill_in "Image", with: @volunteer_help_request.image
    fill_in "Status", with: @volunteer_help_request.status
    fill_in "Title", with: @volunteer_help_request.title
    fill_in "User", with: @volunteer_help_request.user_id
    click_on "Create Volunteer help request"

    assert_text "Volunteer help request was successfully created"
    click_on "Back"
  end

  test "updating a Volunteer help request" do
    visit volunteer_help_requests_url
    click_on "Edit", match: :first

    fill_in "City", with: @volunteer_help_request.city
    fill_in "Deadline", with: @volunteer_help_request.deadline
    fill_in "Description", with: @volunteer_help_request.description
    fill_in "Image", with: @volunteer_help_request.image
    fill_in "Status", with: @volunteer_help_request.status
    fill_in "Title", with: @volunteer_help_request.title
    fill_in "User", with: @volunteer_help_request.user_id
    click_on "Update Volunteer help request"

    assert_text "Volunteer help request was successfully updated"
    click_on "Back"
  end

  test "destroying a Volunteer help request" do
    visit volunteer_help_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volunteer help request was successfully destroyed"
  end
end
