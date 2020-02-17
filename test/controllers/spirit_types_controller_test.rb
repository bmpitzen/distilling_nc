require 'test_helper'

class SpiritTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spirit_type = spirit_types(:one)
  end

  test "should get index" do
    get spirit_types_url
    assert_response :success
  end

  test "should get new" do
    get new_spirit_type_url
    assert_response :success
  end

  test "should create spirit_type" do
    assert_difference('SpiritType.count') do
      post spirit_types_url, params: { spirit_type: { category: @spirit_type.category } }
    end

    assert_redirected_to spirit_type_url(SpiritType.last)
  end

  test "should show spirit_type" do
    get spirit_type_url(@spirit_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_spirit_type_url(@spirit_type)
    assert_response :success
  end

  test "should update spirit_type" do
    patch spirit_type_url(@spirit_type), params: { spirit_type: { category: @spirit_type.category } }
    assert_redirected_to spirit_type_url(@spirit_type)
  end

  test "should destroy spirit_type" do
    assert_difference('SpiritType.count', -1) do
      delete spirit_type_url(@spirit_type)
    end

    assert_redirected_to spirit_types_url
  end
end
