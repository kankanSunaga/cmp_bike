require 'test_helper'

class BikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bike = bikes(:one)
  end

  test "should get index" do
    get bikes_url
    assert_response :success
  end

  test "should get new" do
    get new_bike_url
    assert_response :success
  end

  test "should create bike" do
    assert_difference('Roadbike.count') do

      post bikes_url, params: { bike: { accessory: @bike.accessory, bb: @bike.bb, bb: @bike.bb, bike_name: @bike.bike_name, bike_series: @bike.bike_series, brake: @bike.brake, chain: @bike.chain, color: @bike.color, component: @bike.component, crank: @bike.crank, frame_type: @bike.frame_type, front_derailleur: @bike.front_derailleur, handle: @bike.handle, maker_id: @bike.maker_id, maker_url: @bike.maker_url, pedal: @bike.pedal, picture: @bike.picture, rear_derailleur: @bike.rear_derailleur, saddle: @bike.saddle, seat_pillar: @bike.seat_pillar, shop_url: @bike.shop_url, sprocket: @bike.sprocket, stem: @bike.stem, sti_lever: @bike.sti_lever, tire: @bike.tire, valve: @bike.valve, wheel: @bike.wheel } }

    end

    assert_redirected_to bike_url(Roadbike.last)
  end

  test "should show bike" do
    get bike_url(@bike)
    assert_response :success
  end

  test "should get edit" do
    get edit_bike_url(@bike)
    assert_response :success
  end

  test "should update bike" do

    patch bike_url(@bike), params: { bike: { accessory: @bike.accessory, bb: @bike.bb, bb: @bike.bb, bike_name: @bike.bike_name, bike_series: @bike.bike_series, brake: @bike.brake, chain: @bike.chain, color: @bike.color, component: @bike.component, crank: @bike.crank, frame_type: @bike.frame_type, front_derailleur: @bike.front_derailleur, handle: @bike.handle, maker_id: @bike.maker_id, maker_url: @bike.maker_url, pedal: @bike.pedal, picture: @bike.picture, rear_derailleur: @bike.rear_derailleur, saddle: @bike.saddle, seat_pillar: @bike.seat_pillar, shop_url: @bike.shop_url, sprocket: @bike.sprocket, stem: @bike.stem, sti_lever: @bike.sti_lever, tire: @bike.tire, valve: @bike.valve, wheel: @bike.wheel } }

    assert_redirected_to bike_url(@bike)
  end

  test "should destroy bike" do
    assert_difference('Roadbike.count', -1) do
      delete bike_url(@bike)
    end

    assert_redirected_to bikes_url
  end
end
