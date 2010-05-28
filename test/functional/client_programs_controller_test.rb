require 'test_helper'

class ClientProgramsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_program" do
    assert_difference('ClientProgram.count') do
      post :create, :client_program => { }
    end

    assert_redirected_to client_program_path(assigns(:client_program))
  end

  test "should show client_program" do
    get :show, :id => client_programs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => client_programs(:one).to_param
    assert_response :success
  end

  test "should update client_program" do
    put :update, :id => client_programs(:one).to_param, :client_program => { }
    assert_redirected_to client_program_path(assigns(:client_program))
  end

  test "should destroy client_program" do
    assert_difference('ClientProgram.count', -1) do
      delete :destroy, :id => client_programs(:one).to_param
    end

    assert_redirected_to client_programs_path
  end
end
