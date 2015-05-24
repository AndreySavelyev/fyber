FactoryGirl.define do
  factory :offers_request do
    uid { generate :int }
    pub0 { generate :int }
    page { generate :int }
  end
end
