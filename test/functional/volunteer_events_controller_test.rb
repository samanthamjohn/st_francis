require 'test_helper'

class VolunteerEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteer_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer_event" do
    assert_difference('VolunteerEvent.count') do
      post :create, :volunteer_event => { }
    end

    assert_redirected_to volunteer_event_path(assigns(:volunteer_event))
  end

  test "should show volunteer_event" do
    get :show, :id => volunteer_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => volunteer_events(:one).to_param
    assert_response :success
  end

  test "should update volunteer_event" do
    put :update, :id => volunteer_events(:one).to_param, :volunteer_event => { }
    assert_redirected_to volunteer_event_path(assigns(:volunteer_event))
  end

  test "should destroy volunteer_event" do
    assert_difference('VolunteerEvent.count', -1) do
      delete :destroy, :id => volunteer_events(:one).to_param
    end

    assert_redirected_to volunteer_events_path
  end
end
