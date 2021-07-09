require "test_helper"

class CasaAlugarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casa_alugar = casa_alugars(:one)
  end

  test "should get index" do
    get casa_alugars_url
    assert_response :success
  end

  test "should get new" do
    get new_casa_alugar_url
    assert_response :success
  end

  test "should create casa_alugar" do
    assert_difference('CasaAlugar.count') do
      post casa_alugars_url, params: { casa_alugar: { banheiros: @casa_alugar.banheiros, condominio: @casa_alugar.condominio, cozinhas: @casa_alugar.cozinhas, desconto: @casa_alugar.desconto, garagem: @casa_alugar.garagem, local: @casa_alugar.local, metragem: @casa_alugar.metragem, preco: @casa_alugar.preco, quartos: @casa_alugar.quartos, salas: @casa_alugar.salas, suites: @casa_alugar.suites } }
    end

    assert_redirected_to casa_alugar_url(CasaAlugar.last)
  end

  test "should show casa_alugar" do
    get casa_alugar_url(@casa_alugar)
    assert_response :success
  end

  test "should get edit" do
    get edit_casa_alugar_url(@casa_alugar)
    assert_response :success
  end

  test "should update casa_alugar" do
    patch casa_alugar_url(@casa_alugar), params: { casa_alugar: { banheiros: @casa_alugar.banheiros, condominio: @casa_alugar.condominio, cozinhas: @casa_alugar.cozinhas, desconto: @casa_alugar.desconto, garagem: @casa_alugar.garagem, local: @casa_alugar.local, metragem: @casa_alugar.metragem, preco: @casa_alugar.preco, quartos: @casa_alugar.quartos, salas: @casa_alugar.salas, suites: @casa_alugar.suites } }
    assert_redirected_to casa_alugar_url(@casa_alugar)
  end

  test "should destroy casa_alugar" do
    assert_difference('CasaAlugar.count', -1) do
      delete casa_alugar_url(@casa_alugar)
    end

    assert_redirected_to casa_alugars_url
  end
end
