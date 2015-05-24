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
    assert_response :success
  end

end
