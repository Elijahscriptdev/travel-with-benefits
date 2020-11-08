json.extract! travel_infomation, :id, :title, :travel_from, :travel_to, :travel_date, :bus_type, :departing_time, :seat_available, :price, :availability, :company_name, :takeoff_location, :user_id, :created_at, :updated_at
json.url travel_infomation_url(travel_infomation, format: :json)
