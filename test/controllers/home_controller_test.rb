require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_index_url
    assert_response :success
  end

  test 'should get about' do
    get home_about_url
    assert_response :success
  end

  test 'should get contact' do
    get home_contact_url
    assert_response :success
  end

  test 'should get testimonial' do
    get home_testimonial_url
    assert_response :success
  end

  test 'should get faq' do
    get home_faq_url
    assert_response :success
  end

  test 'should get partners' do
    get home_partners_url
    assert_response :success
  end
end
