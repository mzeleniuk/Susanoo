require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get questions' do
    get :questions
    assert_response :success
    assert_select 'title', 'Susanoo | Questions'
  end

  test 'should get news' do
    get :news
    assert_response :success
    assert_select 'title', 'Susanoo | News'
  end

  test 'should get contact' do
    get :contact
    assert_response :success
    assert_select 'title', 'Susanoo | Contact'
  end

  test 'should get about' do
    get :about
    assert_response :success
    assert_select 'title', 'Susanoo | About Us'
  end

  test 'should get terms' do
    get :terms
    assert_response :success
    assert_select 'title', 'Susanoo | Terms and Conditions'
  end

  test 'should get privacy' do
    get :privacy
    assert_response :success
    assert_select 'title', 'Susanoo | Privacy Policy'
  end
end
