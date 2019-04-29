class Treatment < ApplicationRecord
  belongs_to  :patient

  def self.explain_in_words(collection)
    output = []
    collection.each do |treatment|
      output << "#{treatment.description}  to #{treatment.necessity}"
    end

    return output.to_sentence
  end
end
