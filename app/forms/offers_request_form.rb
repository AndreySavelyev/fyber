class OffersRequestForm < Reform::Form
  include Reform::Form::ActiveModel

  model :offers_request

  property :uid, virtual: true
  property :pub0, virtual: true
  property :page, virtual: true

  validates :uid, presence: true
  validates :pub0, numericality: true, presence: true
  validates :page, numericality: true, presence: true
end
