require 'test_helper'

class AddrbooksControllerTest < ActionController::TestCase
  setup do
    @addrbook = addrbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addrbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addrbook" do
    assert_difference('Addrbook.count') do
      post :create, addrbook: { address: @addrbook.address, code: @addrbook.code, kana: @addrbook.kana, name: @addrbook.name, postal_code: @addrbook.postal_code }
    end

    assert_redirected_to addrbook_path(assigns(:addrbook))
  end

  test "should show addrbook" do
    get :show, id: @addrbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addrbook
    assert_response :success
  end

  test "should update addrbook" do
    patch :update, id: @addrbook, addrbook: { address: @addrbook.address, code: @addrbook.code, kana: @addrbook.kana, name: @addrbook.name, postal_code: @addrbook.postal_code }
    assert_redirected_to addrbook_path(assigns(:addrbook))
  end

  test "should destroy addrbook" do
    assert_difference('Addrbook.count', -1) do
      delete :destroy, id: @addrbook
    end

    assert_redirected_to addrbooks_path
  end
end
