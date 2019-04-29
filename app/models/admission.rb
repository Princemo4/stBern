class Admission < ApplicationRecord
  belongs_to :patient
  has_many  :admission_diagnoses, as: :diagnosable
  has_many  :symptoms
  has_many  :observations

  alias_attribute :diagnoses, :admission_diagnoses


end
