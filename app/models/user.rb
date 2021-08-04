class User < ApplicationRecord
    has_many :reservations
    has_many :trucks, through: :reservations
end
