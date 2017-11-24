require 'test_helper'

class DefectedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defected_item = defected_items(:one)
  end

  test "should get index" do
    get defected_items_url
    assert_response :success
  end

  test "should get new" do
    get new_defected_item_url
    assert_response :success
  end

  test "should create defected_item" do
    assert_difference('DefectedItem.count') do
      post defected_items_url, params: { defected_item: { company: @defected_item.company, description: @defected_item.description, full_name: @defected_item.full_name, status: @defected_item.status, total: @defected_item.total } }
    end

    assert_redirected_to defected_item_url(DefectedItem.last)
  end

  test "should show defected_item" do
    get defected_item_url(@defected_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_defected_item_url(@defected_item)
    assert_response :success
  end

  test "should update defected_item" do
    patch defected_item_url(@defected_item), params: { defected_item: { company: @defected_item.company, description: @defected_item.description, full_name: @defected_item.full_name, status: @defected_item.status, total: @defected_item.total } }
    assert_redirected_to defected_item_url(@defected_item)
  end

  test "should destroy defected_item" do
    assert_difference('DefectedItem.count', -1) do
      delete defected_item_url(@defected_item)
    end

    assert_redirected_to defected_items_url
  end
end
