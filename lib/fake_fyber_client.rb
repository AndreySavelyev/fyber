class FakeFyberClient

  def get_offers(uid:, pub0:, page:)
    OpenStruct.new(body: '{
     "code": " OK" ,
     "message": "OK",
     "count": 1,
     "pages": 1,
     "information" : {
      "app_name": "SP Test App" ,
      "appid": 157,
      "virtual_currency": "Coins",
      "country": " US" ,
      "language": " EN" ,
      "support_url": "http://iframe.sponsorpay.com/mobile/DE/157/my_offers"
     },
     "offers": [
      {
        "title": "Tap  Fish",
        "offer_id": 13554,
        "teaser": "Download and START" ,
        "required_actions": "Download and START",
        "link": "http://iframe.sponsorpay.com/mbrowser?appid=157&lpid=11387&uid=player1",
        "offer_types" : [
         {
          "offer_type_id": 101,
          "readable": "Download"
         },
         {
          "offer_type_id": 112,
          "readable": "Free"
         }
        ] ,
        "thumbnail" : {
         "lowres": "http://cdn.sponsorpay.com/assets/1808/icon175x175-2_square_60.png",
         "hires": "http://cdn.sponsorpay.com/assets/1808/icon175x175-2_square_175.png"
        },
        "payout": 90,
        "time_to_payout" : {
         "amount": 1800 ,
         "readable": "30 minutes"
        }
      }
     ]
    }')
  end

end
