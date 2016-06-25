require 'test_helper'

class ClienteEmailsControllerTest < ActionController::TestCase
  setup do
    @cliente_email = cliente_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_email" do
    assert_difference('ClienteEmail.count') do
      post :create, cliente_email: { cliente_id: @cliente_email.cliente_id, email: @cliente_email.email, tipoemail_id: @cliente_email.tipoemail_id }
    end

    assert_redirected_to cliente_email_path(assigns(:cliente_email))
  end

  test "should show cliente_email" do
    get :show, id: @cliente_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_email
    assert_response :success
  end

  test "should update cliente_email" do
    patch :update, id: @cliente_email, cliente_email: { cliente_id: @cliente_email.cliente_id, email: @cliente_email.email, tipoemail_id: @cliente_email.tipoemail_id }
    assert_redirected_to cliente_email_path(assigns(:cliente_email))
  end

  test "should destroy cliente_email" do
    assert_difference('ClienteEmail.count', -1) do
      delete :destroy, id: @cliente_email
    end

    assert_redirected_to cliente_emails_path
  end
end
