require 'test_helper'

class UserMoviesControllerTest < ActionController::TestCase
  setup do
    @user_movie = user_movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_movie" do
    assert_difference('UserMovie.count') do
      post :create, user_movie: {  }
    end

    assert_redirected_to user_movie_path(assigns(:user_movie))
  end

  test "should show user_movie" do
    get :show, id: @user_movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_movie
    assert_response :success
  end

  test "should update user_movie" do
    patch :update, id: @user_movie, user_movie: {  }
    assert_redirected_to user_movie_path(assigns(:user_movie))
  end

  test "should destroy user_movie" do
    assert_difference('UserMovie.count', -1) do
      delete :destroy, id: @user_movie
    end

    assert_redirected_to user_movies_path
  end
end
