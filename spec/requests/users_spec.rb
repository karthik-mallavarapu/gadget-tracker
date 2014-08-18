require 'rails_helper'

feature "User " do 

  let(:user) do
    user = FactoryGirl.create(:user)
    user
  end

  scenario "can sign in successfully with valid credentials" do
    user_sign_in(user)
    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content user.email
    user_sign_out
  end

  scenario "can sign out after a valid sign in" do
    user_sign_in(user)
    user_sign_out
    expect(page).to have_content 'Signed out successfully.'
  end

end