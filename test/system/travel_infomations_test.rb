require 'application_system_test_case'

class TravelInfomationsTest < ApplicationSystemTestCase
  setup do
    @travel_infomation = travel_infomations(:one)
  end

  test 'visiting the index' do
    visit travel_infomations_url
    assert_selector 'h1', text: 'Travel Infomations'
  end

  test 'creating a Travel infomation' do
    visit travel_infomations_url
    click_on 'New Travel Infomation'

    fill_in 'Availability', with: @travel_infomation.availability
    fill_in 'Bus type', with: @travel_infomation.bus_type
    fill_in 'Company name', with: @travel_infomation.company_name
    fill_in 'Departing time', with: @travel_infomation.departing_time
    fill_in 'Price', with: @travel_infomation.price
    fill_in 'Seat available', with: @travel_infomation.seat_available
    fill_in 'Takeoff location', with: @travel_infomation.takeoff_location
    fill_in 'Title', with: @travel_infomation.title
    fill_in 'Travel date', with: @travel_infomation.travel_date
    fill_in 'Travel from', with: @travel_infomation.travel_from
    fill_in 'Travel to', with: @travel_infomation.travel_to
    fill_in 'User', with: @travel_infomation.user_id
    click_on 'Create Travel infomation'

    assert_text 'Travel infomation was successfully created'
    click_on 'Back'
  end

  test 'updating a Travel infomation' do
    visit travel_infomations_url
    click_on 'Edit', match: :first

    fill_in 'Availability', with: @travel_infomation.availability
    fill_in 'Bus type', with: @travel_infomation.bus_type
    fill_in 'Company name', with: @travel_infomation.company_name
    fill_in 'Departing time', with: @travel_infomation.departing_time
    fill_in 'Price', with: @travel_infomation.price
    fill_in 'Seat available', with: @travel_infomation.seat_available
    fill_in 'Takeoff location', with: @travel_infomation.takeoff_location
    fill_in 'Title', with: @travel_infomation.title
    fill_in 'Travel date', with: @travel_infomation.travel_date
    fill_in 'Travel from', with: @travel_infomation.travel_from
    fill_in 'Travel to', with: @travel_infomation.travel_to
    fill_in 'User', with: @travel_infomation.user_id
    click_on 'Update Travel infomation'

    assert_text 'Travel infomation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Travel infomation' do
    visit travel_infomations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Travel infomation was successfully destroyed'
  end
end
