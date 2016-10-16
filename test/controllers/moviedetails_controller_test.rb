require 'test_helper'

class MoviedetailsControllerTest < ActionController::TestCase
  setup do
    @moviedetail = moviedetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moviedetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moviedetail" do
    assert_difference('Moviedetail.count') do
      post :create, moviedetail: { awards: @moviedetail.awards, imdbrating: @moviedetail.imdbrating, metascore: @moviedetail.metascore, rated: @moviedetail.rated, title: @moviedetail.title, year: @moviedetail.year }
    end

    assert_redirected_to moviedetail_path(assigns(:moviedetail))
  end

  test "should show moviedetail" do
    get :show, id: @moviedetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moviedetail
    assert_response :success
  end

  test "should update moviedetail" do
    patch :update, id: @moviedetail, moviedetail: { awards: @moviedetail.awards, imdbrating: @moviedetail.imdbrating, metascore: @moviedetail.metascore, rated: @moviedetail.rated, title: @moviedetail.title, year: @moviedetail.year }
    assert_redirected_to moviedetail_path(assigns(:moviedetail))
  end

  test "should destroy moviedetail" do
    assert_difference('Moviedetail.count', -1) do
      delete :destroy, id: @moviedetail
    end

    assert_redirected_to moviedetails_path
  end
end
