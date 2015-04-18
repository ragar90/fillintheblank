require 'test_helper'

class BlankWallsControllerTest < ActionController::TestCase
  setup do
    @blank_wall = blank_walls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blank_walls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blank_wall" do
    assert_difference('BlankWall.count') do
      post :create, blank_wall: { height: @blank_wall.height, max_budget: @blank_wall.max_budget, min_budget: @blank_wall.min_budget, owner_id: @blank_wall.owner_id, width: @blank_wall.width }
    end

    assert_redirected_to blank_wall_path(assigns(:blank_wall))
  end

  test "should show blank_wall" do
    get :show, id: @blank_wall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blank_wall
    assert_response :success
  end

  test "should update blank_wall" do
    patch :update, id: @blank_wall, blank_wall: { height: @blank_wall.height, max_budget: @blank_wall.max_budget, min_budget: @blank_wall.min_budget, owner_id: @blank_wall.owner_id, width: @blank_wall.width }
    assert_redirected_to blank_wall_path(assigns(:blank_wall))
  end

  test "should destroy blank_wall" do
    assert_difference('BlankWall.count', -1) do
      delete :destroy, id: @blank_wall
    end

    assert_redirected_to blank_walls_path
  end
end
