require "application_system_test_case"

class CasaAlugarsTest < ApplicationSystemTestCase
  setup do
    @casa_alugar = casa_alugars(:one)
  end

  test "visiting the index" do
    visit casa_alugars_url
    assert_selector "h1", text: "Casa Alugars"
  end

  test "creating a Casa alugar" do
    visit casa_alugars_url
    click_on "New Casa Alugar"

    fill_in "Banheiros", with: @casa_alugar.banheiros
    fill_in "Condominio", with: @casa_alugar.condominio
    fill_in "Cozinhas", with: @casa_alugar.cozinhas
    fill_in "Desconto", with: @casa_alugar.desconto
    fill_in "Garagem", with: @casa_alugar.garagem
    fill_in "Local", with: @casa_alugar.local
    fill_in "Metragem", with: @casa_alugar.metragem
    fill_in "Preco", with: @casa_alugar.preco
    fill_in "Quartos", with: @casa_alugar.quartos
    fill_in "Salas", with: @casa_alugar.salas
    fill_in "Suites", with: @casa_alugar.suites
    click_on "Create Casa alugar"

    assert_text "Casa alugar was successfully created"
    click_on "Back"
  end

  test "updating a Casa alugar" do
    visit casa_alugars_url
    click_on "Edit", match: :first

    fill_in "Banheiros", with: @casa_alugar.banheiros
    fill_in "Condominio", with: @casa_alugar.condominio
    fill_in "Cozinhas", with: @casa_alugar.cozinhas
    fill_in "Desconto", with: @casa_alugar.desconto
    fill_in "Garagem", with: @casa_alugar.garagem
    fill_in "Local", with: @casa_alugar.local
    fill_in "Metragem", with: @casa_alugar.metragem
    fill_in "Preco", with: @casa_alugar.preco
    fill_in "Quartos", with: @casa_alugar.quartos
    fill_in "Salas", with: @casa_alugar.salas
    fill_in "Suites", with: @casa_alugar.suites
    click_on "Update Casa alugar"

    assert_text "Casa alugar was successfully updated"
    click_on "Back"
  end

  test "destroying a Casa alugar" do
    visit casa_alugars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Casa alugar was successfully destroyed"
  end
end
