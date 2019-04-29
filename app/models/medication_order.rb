class MedicationOrder < ApplicationRecord
  belongs_to  :patient
  has_one :frequency, class_name: 'OrderFrequency'

  enum mass_unit: {mg: 0}
  enum medication_route: {PO: 0, IM: 1, SC: 2}
end
