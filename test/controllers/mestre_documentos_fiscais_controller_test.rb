require 'test_helper'

class MestreDocumentosFiscaisControllerTest < ActionController::TestCase
  setup do
    @mestre_documento_fiscal = mestre_documentos_fiscais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mestre_documentos_fiscais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mestre_documento_fiscal" do
    assert_difference('MestreDocumentoFiscal.count') do
      post :create, mestre_documento_fiscal: {  }
    end

    assert_redirected_to mestre_documento_fiscal_path(assigns(:mestre_documento_fiscal))
  end

  test "should show mestre_documento_fiscal" do
    get :show, id: @mestre_documento_fiscal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mestre_documento_fiscal
    assert_response :success
  end

  test "should update mestre_documento_fiscal" do
    patch :update, id: @mestre_documento_fiscal, mestre_documento_fiscal: {  }
    assert_redirected_to mestre_documento_fiscal_path(assigns(:mestre_documento_fiscal))
  end

  test "should destroy mestre_documento_fiscal" do
    assert_difference('MestreDocumentoFiscal.count', -1) do
      delete :destroy, id: @mestre_documento_fiscal
    end

    assert_redirected_to mestre_documentos_fiscais_path
  end
end
