module People
  class LocationsController < ApplicationController
    before_action :set_person
    # GET /people/1/locations.json
    def index
      respond_to do |f|
        f.json {}
      end
    end

    private
    def set_person
      @person = Person.eager_load(:locations)
                      .find(params[:person_id])
      @locations = @person.locations
    end
  end
end
