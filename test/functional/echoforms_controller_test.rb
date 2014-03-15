require 'test_helper'

class EchoformsControllerTest < ActionController::TestCase
  setup do
    @echoform = echoforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:echoforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create echoform" do
    assert_difference('Echoform.count') do
      post :create, echoform: { clinical_details: @echoform.clinical_details, consultant: @echoform.consultant, doctor: @echoform.doctor, ecg_changes: @echoform.ecg_changes, echo_type: @echoform.echo_type, ward: @echoform.ward }
    end

    assert_redirected_to echoform_path(assigns(:echoform))
  end

  test "should show echoform" do
    get :show, id: @echoform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @echoform
    assert_response :success
  end

  test "should update echoform" do
    put :update, id: @echoform, echoform: { clinical_details: @echoform.clinical_details, consultant: @echoform.consultant, doctor: @echoform.doctor, ecg_changes: @echoform.ecg_changes, echo_type: @echoform.echo_type, ward: @echoform.ward }
    assert_redirected_to echoform_path(assigns(:echoform))
  end

  test "should destroy echoform" do
    assert_difference('Echoform.count', -1) do
      delete :destroy, id: @echoform
    end

    assert_redirected_to echoforms_path
  end
end
