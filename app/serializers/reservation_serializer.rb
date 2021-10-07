class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :customer
  belongs_to :guide
  attributes :reservation_date
end
