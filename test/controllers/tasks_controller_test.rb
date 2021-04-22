require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "shoud_get_root" do
    get root_url
    assert_response :success
  end
end
