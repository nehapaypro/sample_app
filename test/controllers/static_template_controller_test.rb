require 'test_helper'

class StaticTemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get template" do
    get static_template_template_url
    assert_response :success
  end

end
