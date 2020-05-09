class Parcel < ApplicationRecord
    has_many :contents, inverse_of: :parcel
    accepts_nested_attributes_for :contents

    def self.statuses
        return {
            0 => "Info received",
            1 => "Parcel left facility",
            2 => "Parcel received by carrier",
            3 => "Out for delivery",
            4 => "Delivered"
        }
    end
end
