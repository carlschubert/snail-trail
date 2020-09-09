require 'test_helper'

class SnailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snail = snails(:one)
  end

  test "should get index" do
    get snails_url
    assert_response :success
  end

  test "should get new" do
    get new_snail_url
    assert_response :success
  end

  test "should create snail" do
    assert_difference('Snail.count') do
      post snails_url, params: { snail: { age: @snail.age, name: @snail.name, species: @snail.species } }
    end

    assert_redirected_to snail_url(Snail.last)
  end

  test "should show snail" do
    get snail_url(@snail)
    assert_response :success
  end

  test "should get edit" do
    get edit_snail_url(@snail)
    assert_response :success
  end

  test "should update snail" do
    patch snail_url(@snail), params: { snail: { age: @snail.age, name: @snail.name, species: @snail.species } }
    assert_redirected_to snail_url(@snail)
  end

  test "should destroy snail" do
    assert_difference('Snail.count', -1) do
      delete snail_url(@snail)
    end

    assert_redirected_to snails_url
  end
end
