class MedicalDiagnosis < ApplicationRecord
  belongs_to :diagnosable, polymorphic: true
end
