require 'spec_helper'

feature "Deleting applicants" do
  scenario "Deleting an applicant" do
    Factory(:applicant, :name => "John Doe")
    visit '/'
    click_link "John Doe"
    click_link "Delete Applicant"
    page.should have_content("Applicant has been deleted.")

    visit '/'
    page.should_not have_content("John Doe")
  end
end
