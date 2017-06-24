require 'test_helper'

class CoachToursControllerTest < ActionController::TestCase
  setup do
    @coach_tour = coach_tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coach_tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coach_tour" do
    assert_difference('CoachTour.count') do
      post :create, coach_tour: { coachtour_id: @coach_tour.coachtour_id }
    end

    assert_redirected_to coach_tour_path(assigns(:coach_tour))
  end

  test "should show coach_tour" do
    get :show, id: @coach_tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coach_tour
    assert_response :success
  end

  test "should update coach_tour" do
    patch :update, id: @coach_tour, coach_tour: { coachtour_id: @coach_tour.coachtour_id }
    assert_redirected_to coach_tour_path(assigns(:coach_tour))
  end

  test "should destroy coach_tour" do
    assert_difference('CoachTour.count', -1) do
      delete :destroy, id: @coach_tour
    end

    assert_redirected_to coach_tours_path
  end
end
