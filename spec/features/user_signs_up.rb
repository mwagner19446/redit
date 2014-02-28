describe "a user can sign up" do

  it "signs up a user" 
    visit root_path
    within ".header" do 
      click_link "Sign Up"
    end
    fill_in "Username", with: "Noob"
    fill_in "Email", with: "noob@boob.com"
    fill_in "Password", with: "noobboob"
    fill_in "Password Confirmation", with: "noobboob"
    click_button "Sign Up!"

    #Expectation
    within ".user_information" do
      expect(page).to have_content "Noob"
    end
  
end