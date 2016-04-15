require 'test_helper'

class BowlingsControllerTest < ActionController::TestCase
  setup do
    @bowling = bowlings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bowlings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bowling" do
    assert_difference('Bowling.count') do
      post :create, bowling: { first_roll: @bowling.first_roll, score: @bowling.score, second_roll: @bowling.second_roll }
    end

    assert_redirected_to bowling_path(assigns(:bowling))
  end

  test "should show bowling" do
    get :show, id: @bowling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bowling
    assert_response :success
  end

  test "should update bowling" do
    patch :update, id: @bowling, bowling: { first_roll: @bowling.first_roll, score: @bowling.score, second_roll: @bowling.second_roll }
    assert_redirected_to bowling_path(assigns(:bowling))
  end

  test "should destroy bowling" do
    assert_difference('Bowling.count', -1) do
      delete :destroy, id: @bowling
    end

    assert_redirected_to bowlings_path
  end
end
