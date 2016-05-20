require 'test_helper'

class DestinatarioDocumentosFiscaisControllerTest < ActionController::TestCase
  setup do
    @destinatario_documento_fiscal = destinatario_documentos_fiscais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destinatario_documentos_fiscais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destinatario_documento_fiscal" do
    assert_difference('DestinatarioDocumentoFiscal.count') do
      post :create, destinatario_documento_fiscal: {  }
    end

    assert_redirected_to destinatario_documento_fiscal_path(assigns(:destinatario_documento_fiscal))
  end

  test "should show destinatario_documento_fiscal" do
    get :show, id: @destinatario_documento_fiscal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destinatario_documento_fiscal
    assert_response :success
  end

  test "should update destinatario_documento_fiscal" do
    patch :update, id: @destinatario_documento_fiscal, destinatario_documento_fiscal: {  }
    assert_redirected_to destinatario_documento_fiscal_path(assigns(:destinatario_documento_fiscal))
  end

  test "should destroy destinatario_documento_fiscal" do
    assert_difference('DestinatarioDocumentoFiscal.count', -1) do
      delete :destroy, id: @destinatario_documento_fiscal
    end

    assert_redirected_to destinatario_documentos_fiscais_path
  end
end
