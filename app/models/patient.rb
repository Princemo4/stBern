class Patient < ApplicationRecord
  belongs_to :facility
  has_one  :admission
  has_many :allergies
  has_many :patient_diagnoses, as: :diagnosable
  has_many :chronic_conditions, as: :diagnosable
  has_many :medications, class_name: 'MedicationOrder'
  has_many :diagnostic_procedures
  has_many :treatments

  alias_attribute :diagnoses, :patient_diagnoses

  enum gender: {male: 0, female: 1, other: 2}


  #TODO :   create methods for age
  #
end
