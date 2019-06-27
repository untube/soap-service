require 'test_helper'

class ConsumesoapControllerTest < ActionDispatch::IntegrationTest
  test "should get respuesta" do
    get consumesoap_respuesta_url
    assert_response :success
  end

end
