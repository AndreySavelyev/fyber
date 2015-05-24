require "test_helper"

class OffersRequestsControllerTest < ActionController::TestCase

  def setup
    @request_attrs = FactoryGirl.attributes_for :offers_request
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    post :create, offers_request: @request_attrs
    assert_redirected_to offers_requests_path(response: @request_attrs)
  end

  def test_show
    get :show
    assert_response :success
  end

end
