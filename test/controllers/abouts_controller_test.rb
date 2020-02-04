require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about = abouts(:one)
  end

  test "should get index" do
    get abouts_url
    assert_response :success
  end

  test "should get new" do
    get new_about_url
    assert_response :success
  end

  test "should create about" do
    assert_difference('About.count') do
      post abouts_url, params: { about: { description: @about.description, fb_link: @about.fb_link, ig_link: @about.ig_link, quote: @about.quote, title: @about.title, twitter_link: @about.twitter_link, user_id: @about.user_id } }
    end

    assert_redirected_to about_url(About.last)
  end

  test "should show about" do
    get about_url(@about)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_url(@about)
    assert_response :success
  end

  test "should update about" do
    patch about_url(@about), params: { about: { description: @about.description, fb_link: @about.fb_link, ig_link: @about.ig_link, quote: @about.quote, title: @about.title, twitter_link: @about.twitter_link, user_id: @about.user_id } }
    assert_redirected_to about_url(@about)
  end

  test "should destroy about" do
    assert_difference('About.count', -1) do
      delete about_url(@about)
    end

    assert_redirected_to abouts_url
  end
end
