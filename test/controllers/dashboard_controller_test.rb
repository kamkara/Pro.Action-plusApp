require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get home" do
    get dashboard_home_url
    assert_response :success
  end

  test "should get members" do
    get dashboard_members_url
    assert_response :success
  end

  test "should get articles" do
    get dashboard_articles_url
    assert_response :success
  end

  test "should get campagnes" do
    get dashboard_campagnes_url
    assert_response :success
  end

  test "should get projets" do
    get dashboard_projets_url
    assert_response :success
  end

  test "should get bememberships" do
    get dashboard_bememberships_url
    assert_response :success
  end

  test "should get benevols" do
    get dashboard_benevols_url
    assert_response :success
  end
end
