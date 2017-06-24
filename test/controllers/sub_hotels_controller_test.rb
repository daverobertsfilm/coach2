require 'test_helper'

class SubHotelsControllerTest < ActionController::TestCase
  setup do
    @sub_hotel = sub_hotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_hotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_hotel" do
    assert_difference('SubHotel.count') do
      post :create, sub_hotel: { coach_tour_id: @sub_hotel.coach_tour_id, hotel_id: @sub_hotel.hotel_id, subhotel_id: @sub_hotel.subhotel_id }
    end

    assert_redirected_to sub_hotel_path(assigns(:sub_hotel))
  end

  test "should show sub_hotel" do
    get :show, id: @sub_hotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_hotel
    assert_response :success
  end

  test "should update sub_hotel" do
    patch :update, id: @sub_hotel, sub_hotel: { coach_tour_id: @sub_hotel.coach_tour_id, hotel_id: @sub_hotel.hotel_id, subhotel_id: @sub_hotel.subhotel_id }
    assert_redirected_to sub_hotel_path(assigns(:sub_hotel))
  end

  test "should destroy sub_hotel" do
    assert_difference('SubHotel.count', -1) do
      delete :destroy, id: @sub_hotel
    end

    assert_redirected_to sub_hotels_path
  end
end
