class Reservation < ActiveRecord::Base
    belongs_to :guide, optional: true
    belongs_to :customer
end