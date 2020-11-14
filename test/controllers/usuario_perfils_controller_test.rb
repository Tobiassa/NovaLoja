require 'test_helper'

class UsuarioPerfilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_perfil = usuario_perfils(:one)
  end

  test "should get index" do
    get usuario_perfils_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_perfil_url
    assert_response :success
  end

  test "should create usuario_perfil" do
    assert_difference('UsuarioPerfil.count') do
      post usuario_perfils_url, params: { usuario_perfil: { nome: @usuario_perfil.nome } }
    end

    assert_redirected_to usuario_perfil_url(UsuarioPerfil.last)
  end

  test "should show usuario_perfil" do
    get usuario_perfil_url(@usuario_perfil)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_perfil_url(@usuario_perfil)
    assert_response :success
  end

  test "should update usuario_perfil" do
    patch usuario_perfil_url(@usuario_perfil), params: { usuario_perfil: { nome: @usuario_perfil.nome } }
    assert_redirected_to usuario_perfil_url(@usuario_perfil)
  end

  test "should destroy usuario_perfil" do
    assert_difference('UsuarioPerfil.count', -1) do
      delete usuario_perfil_url(@usuario_perfil)
    end

    assert_redirected_to usuario_perfils_url
  end
end
