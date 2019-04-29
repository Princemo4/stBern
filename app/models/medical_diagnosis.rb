class MedicalDiagnosis < ApplicationRecord
  belongs_to :diagnosable, polymorphic: true

  def self.explain_in_words(collection)
    output = []
    collection.each do |diagnosis|
      output << "#{diagnosis.description} (#{diagnosis.code})"
    end

    return output.to_sentence
  end
end
