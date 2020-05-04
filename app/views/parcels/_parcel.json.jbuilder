json.extract! parcel, :id, :status, :customer, :eircode, :created_at, :updated_at
json.url parcel_url(parcel, format: :json)
