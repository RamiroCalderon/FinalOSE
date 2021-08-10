require "test_helper"

class CoordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coord = coords(:one)
  end

  test "should get index" do
    get coords_url
    assert_response :success
  end

  test "should get new" do
    get new_coord_url
    assert_response :success
  end

  test "should create coord" do
    assert_difference('Coord.count') do
      post coords_url, params: { coord: { name: @coord.name, school_id: @coord.school_id } }
    end

    assert_redirected_to coord_url(Coord.last)
  end

  test "should show coord" do
    get coord_url(@coord)
    assert_response :success
  end

  test "should get edit" do
    get edit_coord_url(@coord)
    assert_response :success
  end

  test "should update coord" do
    patch coord_url(@coord), params: { coord: { name: @coord.name, school_id: @coord.school_id } }
    assert_redirected_to coord_url(@coord)
  end

  test "should destroy coord" do
    assert_difference('Coord.count', -1) do
      delete coord_url(@coord)
    end

    assert_redirected_to coords_url
  end
end
