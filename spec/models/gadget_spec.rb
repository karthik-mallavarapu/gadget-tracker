require 'rails_helper'

describe Gadget do 


  ['name', 'description'].each do |param|
    it "should have a #{param}"  do
      expect(FactoryGirl.build(:gadget, param.to_sym => nil)).not_to be_valid
    end
  end

  it "validates uniqueness of name" do 
    gadget1 = FactoryGirl.create(:gadget)
    gadget2 = FactoryGirl.build(:gadget)
    expect(gadget2).not_to be_valid
  end

end