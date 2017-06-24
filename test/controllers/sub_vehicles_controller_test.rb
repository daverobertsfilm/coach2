require 'test_helper'

class SubVehiclesControllerTest < ActionController::TestCase
  setup do
    @sub_vehicle = sub_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_vehicle" do
    assert_difference('SubVehicle.count') do
      post :create, sub_vehicle: { coach_tour_id: @sub_vehicle.coach_tour_id, subvehicle_id: @sub_vehicle.subvehicle_id, vehicle_id: @sub_vehicle.vehicle_id }
    end

    assert_redirected_to sub_vehicle_path(assigns(:sub_vehicle))
  end

  test "should show sub_vehicle" do
    get :show, id: @sub_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_vehicle
    assert_response :success
  end

  test "should update sub_vehicle" do
    patch :update, id: @sub_vehicle, sub_vehicle: { coach_tour_id: @sub_vehicle.coach_tour_id, subvehicle_id: @sub_vehicle.subvehicle_id, vehicle_id: @sub_vehicle.vehicle_id }
    assert_redirected_to sub_vehicle_path(assigns(:sub_vehicle))
  end

  test "should destroy sub_vehicle" do
    assert_difference('SubVehicle.count', -1) do
      delete :destroy, id: @sub_vehicle
    end

    assert_redirected_to sub_vehicles_path
  end
end
