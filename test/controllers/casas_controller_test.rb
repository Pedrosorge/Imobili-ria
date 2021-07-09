require "test_helper"

class CasasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casa = casas(:one)
  end

  test "should get index" do
    get casas_url
    assert_response :success
  end

  test "should get new" do
    get new_casa_url
    assert_response :success
  end

  test "should create casa" do
    assert_difference('Casa.count') do
      post casas_url, params: { casa: { banheiro: @casa.banheiro, condominio: @casa.condominio, desconto_num: @casa.desconto_num, dormitorios: @casa.dormitorios, garagem: @casa.garagem,local: @casa.local, metragem: @casa.metragem, preco: @casa.preco, suites: @casa.suites } }
    end

    assert_redirected_to casa_url(Casa.last)
  end

  test "should show casa" do
    get casa_url(@casa)
    assert_response :success
  end

  test "should get edit" do
    get edit_casa_url(@casa)
    assert_response :success
  end

  test "should update casa" do
    patch casa_url(@casa), params: { casa: { banheiro: @casa.banheiro, condominio: @casa.condominio, desconto_num: @casa.desconto_num, dormitorios: @casa.dormitorios, garagem: @casa.garagem, local: @casa.local, metragem: @casa.metragem, preco: @casa.preco, suites: @casa.suites } }
    assert_redirected_to casa_url(@casa)
  end

  test "should destroy casa" do
    assert_difference('Casa.count', -1) do
      delete casa_url(@casa)
    end

    assert_redirected_to casas_url
  end
end
