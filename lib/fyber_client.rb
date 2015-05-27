require 'weary'
require 'digest/sha1'

class FyberClient < Weary::Client

  HASHKEY_PARAMS = {
    appid: '157',
    format: 'json',
    device_id: '2b6f0cc904d137be2e1730235f5664094b83',
    locale: 'de',
    ip: '109.235.143.113',
    offer_types: '112',
  }
  API_Key = 'b07a12df7d52e6c118e5d47d3f9e60135b109a1f'

  domain 'http://api.sponsorpay.com/feed/v1'

  get :offers, "/offers.json" do |resource|
    resource.headers "Content-Type" => "application/json"
  end

  def initialize
    @timestamp = Time.now.to_i
  end

  def get_offers(uid:, pub0:, page:)
    user_params = {uid: uid, pub0: pub0, page: page, timestamp: @timestamp}
    attrs = HASHKEY_PARAMS.merge(user_params)
    hashkey = calculate_hashkey(attrs)

    attrs.merge!(hashkey: hashkey)

    request = self.offers
    request.params attrs
    request.perform rescue nil
  end

  private

  def calculate_hashkey(hash)
    Digest::SHA1.hexdigest("#{hash.to_query}&#{API_Key}")
  end

end
