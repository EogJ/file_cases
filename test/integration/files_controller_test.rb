require "integration_test_case"

class CasesControllerTest < IntegrationTestCase
  def setup
    @file = files(:one)
  end

  test "GET index" do
    get cases_path
    assert_response :success
  end

  test "GET show" do
    get case_path(@case.signed_id)
    assert_response :success
  end
end
