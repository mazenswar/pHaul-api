class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :truck

  def self.check_clash(possible_reservation)
    Reservation.all.any? { |res| 
        (possible_reservation["start_time"] >= res.start_time && possible_reservation["start_time"] <= res.end_time) || (res.start_time >= possible_reservation["start_time"] && res.start_time <= possible_reservation["end_time"])
    }
  end
end
