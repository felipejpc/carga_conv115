require 'test_helper'

class ItemDocumentosFiscaisControllerTest < ActionController::TestCase
  setup do
    @item_documento_fiscal = item_documentos_fiscais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_documentos_fiscais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_documento_fiscal" do
    assert_difference('ItemDocumentoFiscal.count') do
      post :create, item_documento_fiscal: {  }
    end

    assert_redirected_to item_documento_fiscal_path(assigns(:item_documento_fiscal))
  end

  test "should show item_documento_fiscal" do
    get :show, id: @item_documento_fiscal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_documento_fiscal
    assert_response :success
  end

  test "should update item_documento_fiscal" do
    patch :update, id: @item_documento_fiscal, item_documento_fiscal: {  }
    assert_redirected_to item_documento_fiscal_path(assigns(:item_documento_fiscal))
  end

  test "should destroy item_documento_fiscal" do
    assert_difference('ItemDocumentoFiscal.count', -1) do
      delete :destroy, id: @item_documento_fiscal
    end

    assert_redirected_to item_documentos_fiscais_path
  end
end
