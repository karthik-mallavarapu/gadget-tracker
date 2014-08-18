require 'rails_helper'

describe User do 
  
  it "validates uniqueness of email" do 
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.build(:user)
    expect(user2).not_to be_valid
  end

end
