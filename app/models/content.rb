class Content < ApplicationRecord
    belongs_to :parcel

    validates :name, presence: true, uniqueness: true, length: { minimum: 1, maximum: 20 }
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
