require "test_helper"

class OffersRequestTest < ActiveSupport::TestCase

  def offers_request
    @offers_request ||= OffersRequest.new
  end

  def test_valid
    assert offers_request.valid?
  end

end
