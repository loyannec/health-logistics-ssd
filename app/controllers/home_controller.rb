class HomeController < ApplicationController
    def index
        @parcels = Parcel.all
        @contents = Content.all
    end
end
