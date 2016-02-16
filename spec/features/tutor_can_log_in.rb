require "spec_helper"

describe "a standard(non-admin) tutor can log in" do   
  let(:standard_tutor) { FactoryGirl.create(:standard_tutor) }

  it "logs in" do
    login(standard_tutor)
    expect(page).to have_content "#{standard_tutor.first_name}"
  end

  def login(standard_tutor)
    visit root_path
    click_link "Log In"
    fill_in :email, with: standard_tutor.email
    fill_in :password, with: standard_tutor.password_digest
    click_button "Log in"
  end

end