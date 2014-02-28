require 'spec_helper'

describe "a user can sign up" do

  it "signs up a user"do 
    visit root_path
    within ".header" do 
      click_link "Sign Up"
    end

    within ".sign_up" do 
      fill_in "User name", with: "Noob"
      fill_in "Email", with: "noob@boob.com"
      fill_in "Password", with: "noobboob"
      fill_in "Password confirmation", with: "noobboob"
      click_button "Sign Up!"
    end 

    #Expectation
    save_and_open_page
    within ".user_information" do
      expect(page).to have_content "Noob"
    end
  end 
end