require 'rails_helper'

RSpec.describe Patient, type: :model do

  context "when first created" do
    it "is empty" do
      Patient.create
      expect(Patient.count).not_to be_zero
    end
  end
end
