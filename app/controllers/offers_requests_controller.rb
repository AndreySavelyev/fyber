class OffersRequestsController < ApplicationController

  def new
    @request_form = OffersRequestForm.new(OffersRequest.new)
  end

  def create
    @offers_request = params[:offers_request]

    fyber_client = FyberClient.new
    response = fyber_client.get_offers(uid: @offers_request[:uid],
                                               pub0: @offers_request[:pub0],
                                               page: @offers_request[:page])
    @response = JSON.parse(response.body)
  end

end
