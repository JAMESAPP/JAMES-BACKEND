require 'test_helper'

class OilExchangesControllerTest < ActionController::TestCase
  setup do
    @oil_exchange = oil_exchanges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oil_exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oil_exchange" do
    assert_difference('OilExchange.count') do
      post :create, oil_exchange: { KM: @oil_exchange.KM, amount: @oil_exchange.amount, date: @oil_exchange.date, observation: @oil_exchange.observation, price: @oil_exchange.price }
    end

    assert_redirected_to oil_exchange_path(assigns(:oil_exchange))
  end

  test "should show oil_exchange" do
    get :show, id: @oil_exchange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oil_exchange
    assert_response :success
  end

  test "should update oil_exchange" do
    patch :update, id: @oil_exchange, oil_exchange: { KM: @oil_exchange.KM, amount: @oil_exchange.amount, date: @oil_exchange.date, observation: @oil_exchange.observation, price: @oil_exchange.price }
    assert_redirected_to oil_exchange_path(assigns(:oil_exchange))
  end

  test "should destroy oil_exchange" do
    assert_difference('OilExchange.count', -1) do
      delete :destroy, id: @oil_exchange
    end

    assert_redirected_to oil_exchanges_path
  end
end
