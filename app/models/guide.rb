class Guide < ActiveRecord::Base
    has_many :reservations
    has_many :guests, through: :reservations
end