require 'test_helper'

class ControlesIdentificacoesControllerTest < ActionController::TestCase
  setup do
    @controle_identificacao = controles_identificacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controles_identificacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controle_identificacao" do
    assert_difference('ControleIdentificacao.count') do
      post :create, controle_identificacao: {  }
    end

    assert_redirected_to controle_identificacao_path(assigns(:controle_identificacao))
  end

  test "should show controle_identificacao" do
    get :show, id: @controle_identificacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controle_identificacao
    assert_response :success
  end

  test "should update controle_identificacao" do
    patch :update, id: @controle_identificacao, controle_identificacao: {  }
    assert_redirected_to controle_identificacao_path(assigns(:controle_identificacao))
  end

  test "should destroy controle_identificacao" do
    assert_difference('ControleIdentificacao.count', -1) do
      delete :destroy, id: @controle_identificacao
    end

    assert_redirected_to controles_identificacoes_path
  end
end
