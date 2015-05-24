class OffersRequestsController < ApplicationController

  def show
    @response = params[:response]
  end

  def new
    @request_form = OffersRequestForm.new(OffersRequest.new)
  end

  def create
    @offers_request = params[:offers_request]

    @offers_response = @offers_request
    redirect_to offers_requests_path(response: @offers_response)

    # if @offers_request.save
    #   render :show, status: :created, location: @offers_request
    # else
    #   render :new
    #   render json: @offers_request.errors, status: :unprocessable_entity
    # end
  end

end
