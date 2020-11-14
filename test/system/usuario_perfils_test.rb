require "application_system_test_case"

class UsuarioPerfilsTest < ApplicationSystemTestCase
  setup do
    @usuario_perfil = usuario_perfils(:one)
  end

  test "visiting the index" do
    visit usuario_perfils_url
    assert_selector "h1", text: "Usuario Perfils"
  end

  test "creating a Usuario perfil" do
    visit usuario_perfils_url
    click_on "New Usuario Perfil"

    fill_in "Nome", with: @usuario_perfil.nome
    click_on "Create Usuario perfil"

    assert_text "Usuario perfil was successfully created"
    click_on "Back"
  end

  test "updating a Usuario perfil" do
    visit usuario_perfils_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @usuario_perfil.nome
    click_on "Update Usuario perfil"

    assert_text "Usuario perfil was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario perfil" do
    visit usuario_perfils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario perfil was successfully destroyed"
  end
end
