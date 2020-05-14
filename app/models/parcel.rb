class Parcel < ApplicationRecord
    has_many :contents, inverse_of: :parcel, dependent: :delete_all
    accepts_nested_attributes_for :contents

    validates :customer, presence: true, uniqueness: true, length: { minimum: 1, maximum: 40 }
    validates :status, presence: true, numericality: true
    validates :eircode, presence: true, length: { minimum: 5, maximum: 8 }

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
