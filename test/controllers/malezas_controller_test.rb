require 'test_helper'

class MalezasControllerTest < ActionController::TestCase
  setup do
    @maleza = malezas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malezas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maleza" do
    assert_difference('Maleza.count') do
      post :create, maleza: { ciclo_id: @maleza.ciclo_id, crecimiento: @maleza.crecimiento, espina: @maleza.espina, latex: @maleza.latex, nombre_cientifico: @maleza.nombre_cientifico, nombre_comun: @maleza.nombre_comun, peciolo: @maleza.peciolo, tipo_de_hoja: @maleza.tipo_de_hoja, tipo_de_tallo: @maleza.tipo_de_tallo }
    end

    assert_redirected_to maleza_path(assigns(:maleza))
  end

  test "should show maleza" do
    get :show, id: @maleza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maleza
    assert_response :success
  end

  test "should update maleza" do
    patch :update, id: @maleza, maleza: { ciclo_id: @maleza.ciclo_id, crecimiento: @maleza.crecimiento, espina: @maleza.espina, latex: @maleza.latex, nombre_cientifico: @maleza.nombre_cientifico, nombre_comun: @maleza.nombre_comun, peciolo: @maleza.peciolo, tipo_de_hoja: @maleza.tipo_de_hoja, tipo_de_tallo: @maleza.tipo_de_tallo }
    assert_redirected_to maleza_path(assigns(:maleza))
  end

  test "should destroy maleza" do
    assert_difference('Maleza.count', -1) do
      delete :destroy, id: @maleza
    end

    assert_redirected_to malezas_path
  end
end
