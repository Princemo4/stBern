require 'rails_helper'

RSpec.describe Facility, type: :model do

  context "When first starting out" do
    it "should not be zero" do
      expect(Facility.count).not_to be_zero
    end

  end
end
