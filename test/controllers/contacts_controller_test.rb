require 'test_helper'
# server不一定要啟動即可測試
class ContactsControllerTest < ActionController::TestCase

  test "contact page" do
    get :index
    assert_response :success
    assert_select "title", "HandcraftAbout -"
    # assert true
    # assert_equal 2, 1 + 1
  end
end
