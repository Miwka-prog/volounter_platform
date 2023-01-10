require 'test_helper'

class VolunteerHelpRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteer_help_request = volunteer_help_requests(:one)
  end

  test "should get index" do
    get volunteer_help_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_volunteer_help_request_url
    assert_response :success
  end

  test "should create volunteer_help_request" do
    assert_difference('VolunteerHelpRequest.count') do
      post volunteer_help_requests_url, params: { volunteer_help_request: { city: @volunteer_help_request.city, deadline: @volunteer_help_request.deadline, description: @volunteer_help_request.description, image: @volunteer_help_request.image, status: @volunteer_help_request.status, title: @volunteer_help_request.title, user_id: @volunteer_help_request.user_id } }
    end

    assert_redirected_to volunteer_help_request_url(VolunteerHelpRequest.last)
  end

  test "should show volunteer_help_request" do
    get volunteer_help_request_url(@volunteer_help_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_volunteer_help_request_url(@volunteer_help_request)
    assert_response :success
  end

  test "should update volunteer_help_request" do
    patch volunteer_help_request_url(@volunteer_help_request), params: { volunteer_help_request: { city: @volunteer_help_request.city, deadline: @volunteer_help_request.deadline, description: @volunteer_help_request.description, image: @volunteer_help_request.image, status: @volunteer_help_request.status, title: @volunteer_help_request.title, user_id: @volunteer_help_request.user_id } }
    assert_redirected_to volunteer_help_request_url(@volunteer_help_request)
  end

  test "should destroy volunteer_help_request" do
    assert_difference('VolunteerHelpRequest.count', -1) do
      delete volunteer_help_request_url(@volunteer_help_request)
    end

    assert_redirected_to volunteer_help_requests_url
  end
end
