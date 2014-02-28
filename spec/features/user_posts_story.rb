require 'spec_helper'
require 'pry'

describe "a user can post a story" do 
  let!(:user) { FactoryGirl.create(:user) }


  # it "user not logged in"do 
  #   #Context:  No Login 
  #   within ".post_button"do 
  #     expect(page).to_not have_content "+"
  #   end 
  # end 


  it "user submits a story"do 

    ##Context
    login(user)
    click_button "+"

    within ".story_form"do 
      fill_in "Url", with: "http://www.google.com"
      click_button "Submit"
    end 

    ##Expectation
    within ".story_detail" do 
      expect(page).to have_content "Google"
    end 
  end 
  
  def login(user)
    visit "/login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end

end 