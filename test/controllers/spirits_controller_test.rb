require 'test_helper'

class SpiritsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spirit = spirits(:one)
  end

  test "should get index" do
    get spirits_url
    assert_response :success
  end

  test "should get new" do
    get new_spirit_url
    assert_response :success
  end

  test "should create spirit" do
    assert_difference('Spirit.count') do
      post spirits_url, params: { spirit: { distillery_id: @spirit.distillery_id, name: @spirit.name, proof: @spirit.proof, spirit_type_id: @spirit.spirit_type_id } }
    end

    assert_redirected_to spirit_url(Spirit.last)
  end

  test "should show spirit" do
    get spirit_url(@spirit)
    assert_response :success
  end

  test "should get edit" do
    get edit_spirit_url(@spirit)
    assert_response :success
  end

  test "should update spirit" do
    patch spirit_url(@spirit), params: { spirit: { distillery_id: @spirit.distillery_id, name: @spirit.name, proof: @spirit.proof, spirit_type_id: @spirit.spirit_type_id } }
    assert_redirected_to spirit_url(@spirit)
  end

  test "should destroy spirit" do
    assert_difference('Spirit.count', -1) do
      delete spirit_url(@spirit)
    end

    assert_redirected_to spirits_url
  end
end
