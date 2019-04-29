class DiagnosticProcedure < ApplicationRecord
  belongs_to  :patient


  def self.explain_in_words(collection)
    output = []
    collection.each do |procedure|
      output << procedure.description.titleize + " on " + procedure.moment.strftime("%B %d, %Y at %I:%M %p ")
    end
    return output.to_sentence
  end

end
