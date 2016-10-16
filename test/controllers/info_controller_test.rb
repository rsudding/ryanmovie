require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get infotitle" do
    get :infotitle
    assert_response :success
  end

  test "should get infoyear" do
    get :infoyear
    assert_response :success
  end

  test "should get inforated" do
    get :inforated
    assert_response :success
  end

  test "should get infoawards" do
    get :infoawards
    assert_response :success
  end

  test "should get infometascore" do
    get :infometascore
    assert_response :success
  end

  test "should get infoimdbrating" do
    get :infoimdbrating
    assert_response :success
  end

end
