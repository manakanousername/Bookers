require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get books_new_url
    assert_response :success
  end

  test "should get index" do
    get books_index_url
    assert_response :success
  end

  test "should get sohw" do
    get books_sohw_url
    assert_response :success
  end

  test "should get edit" do
    get books_edit_url
    assert_response :success
  end
end
