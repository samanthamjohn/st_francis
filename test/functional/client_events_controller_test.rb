require 'test_helper'

class ClientEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_event" do
    assert_difference('ClientEvent.count') do
      post :create, :client_event => { }
    end

    assert_redirected_to client_event_path(assigns(:client_event))
  end

  test "should show client_event" do
    get :show, :id => client_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => client_events(:one).to_param
    assert_response :success
  end

  test "should update client_event" do
    put :update, :id => client_events(:one).to_param, :client_event => { }
    assert_redirected_to client_event_path(assigns(:client_event))
  end

  test "should destroy client_event" do
    assert_difference('ClientEvent.count', -1) do
      delete :destroy, :id => client_events(:one).to_param
    end

    assert_redirected_to client_events_path
  end
end
