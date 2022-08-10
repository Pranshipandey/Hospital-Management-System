class HospitalsController < ApplicationController
def index
    @hospital = Hospital.all
end


def show
    @hospital = Hospital.find(params[:id])
end
end