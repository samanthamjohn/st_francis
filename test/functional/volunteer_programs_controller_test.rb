require 'test_helper'

class VolunteerProgramsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteer_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer_program" do
    assert_difference('VolunteerProgram.count') do
      post :create, :volunteer_program => { }
    end

    assert_redirected_to volunteer_program_path(assigns(:volunteer_program))
  end

  test "should show volunteer_program" do
    get :show, :id => volunteer_programs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => volunteer_programs(:one).to_param
    assert_response :success
  end

  test "should update volunteer_program" do
    put :update, :id => volunteer_programs(:one).to_param, :volunteer_program => { }
    assert_redirected_to volunteer_program_path(assigns(:volunteer_program))
  end

  test "should destroy volunteer_program" do
    assert_difference('VolunteerProgram.count', -1) do
      delete :destroy, :id => volunteer_programs(:one).to_param
    end

    assert_redirected_to volunteer_programs_path
  end
end
