class MedicationOrder < ApplicationRecord
  belongs_to  :patient
  has_one :frequency, class_name: 'OrderFrequency'

  enum mass_unit: {mg: 0}
  enum medication_route: {PO: 0, IM: 1, SC: 2}


  def self.explain_in_words(collection)
    output = []
    collection.each do |medication|
      output << " #{medication.name } #{medication.dosage.to_i.to_s + medication.mass_unit} #{medication.medication_route} #{medication.frequency.value.to_s + medication.frequency.frequency_unit} to #{medication.necessity}"
    end

    return output.to_sentence
  end

end
