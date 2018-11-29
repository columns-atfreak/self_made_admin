require 'test_helper'

class Admin::ColumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_column = admin_columns(:one)
  end

  test "should get index" do
    get admin_columns_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_column_url
    assert_response :success
  end

  test "should create admin_column" do
    assert_difference('Admin::Column.count') do
      post admin_columns_url, params: { admin_column: {  } }
    end

    assert_redirected_to admin_column_url(Admin::Column.last)
  end

  test "should show admin_column" do
    get admin_column_url(@admin_column)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_column_url(@admin_column)
    assert_response :success
  end

  test "should update admin_column" do
    patch admin_column_url(@admin_column), params: { admin_column: {  } }
    assert_redirected_to admin_column_url(@admin_column)
  end

  test "should destroy admin_column" do
    assert_difference('Admin::Column.count', -1) do
      delete admin_column_url(@admin_column)
    end

    assert_redirected_to admin_columns_url
  end
end
