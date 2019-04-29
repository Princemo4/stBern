class PatientController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    @admission = @patient.admission
  end
end
