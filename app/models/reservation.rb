class Reservation < ActiveRecord::Base
    belongs_to :guide
    belongs_to :customer
end