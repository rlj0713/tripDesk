class Customer < ActiveRecord::Base
    has_many :reservations
    has_many :guides, through: :reservations
end