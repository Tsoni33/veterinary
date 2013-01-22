class DoctorController < ApplicationController
  def index
    @doctors = Person.doctors
  end
end
