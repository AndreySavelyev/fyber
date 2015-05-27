class FyberService

  def initialize
    @fyber_client = configus.fyber_client.camelize.constantize.new
  end
  delegate :get_offers, to: :@fyber_client

end
