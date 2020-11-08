require 'test_helper'

class TravelInfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_infomation = travel_infomations(:one)
  end

  test 'should get index' do
    get travel_infomations_url
    assert_response :success
  end

  test 'should get new' do
    get new_travel_infomation_url
    assert_response :success
  end

  test 'should create travel_infomation' do
    assert_difference('TravelInfomation.count') do
      post travel_infomations_url, params: { travel_infomation: { availability: @travel_infomation.availability, bus_type: @travel_infomation.bus_type, company_name: @travel_infomation.company_name, departing_time: @travel_infomation.departing_time, price: @travel_infomation.price, seat_available: @travel_infomation.seat_available, takeoff_location: @travel_infomation.takeoff_location, title: @travel_infomation.title, travel_date: @travel_infomation.travel_date, travel_from: @travel_infomation.travel_from, travel_to: @travel_infomation.travel_to, user_id: @travel_infomation.user_id } }
    end

    assert_redirected_to travel_infomation_url(TravelInfomation.last)
  end

  test 'should show travel_infomation' do
    get travel_infomation_url(@travel_infomation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_travel_infomation_url(@travel_infomation)
    assert_response :success
  end

  test 'should update travel_infomation' do
    patch travel_infomation_url(@travel_infomation), params: { travel_infomation: { availability: @travel_infomation.availability, bus_type: @travel_infomation.bus_type, company_name: @travel_infomation.company_name, departing_time: @travel_infomation.departing_time, price: @travel_infomation.price, seat_available: @travel_infomation.seat_available, takeoff_location: @travel_infomation.takeoff_location, title: @travel_infomation.title, travel_date: @travel_infomation.travel_date, travel_from: @travel_infomation.travel_from, travel_to: @travel_infomation.travel_to, user_id: @travel_infomation.user_id } }
    assert_redirected_to travel_infomation_url(@travel_infomation)
  end

  test 'should destroy travel_infomation' do
    assert_difference('TravelInfomation.count', -1) do
      delete travel_infomation_url(@travel_infomation)
    end

    assert_redirected_to travel_infomations_url
  end
end
