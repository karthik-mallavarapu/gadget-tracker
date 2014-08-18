require 'rails_helper'

describe GadgetsController do

  let(:user) do
    user = FactoryGirl.create(:user)
    user
  end

  it "displays an error and redirects to Sign in page if user is not authenticated" do
    get :index, {user_id: user.id}
    expect(response).to redirect_to new_user_session_path
    expect(flash[:alert]).to eql "You need to sign in or sign up before continuing."
  end

  it "displays an error and redirects to home page if gadget id is not found" do
    sign_in(user)
    get :show, {user_id: user.id, id: 2}
    expect(response).to redirect_to user_gadgets_path(user)
    expect(flash[:alert]).to eql "The gadget you were looking for could not be found."
  end

end
