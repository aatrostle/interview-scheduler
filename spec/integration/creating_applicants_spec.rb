require 'spec_helper'

feature 'Creating Applicants' do
  scenario "can create an applicant" do
    visit '/'
    click_link 'New Applicant'
    fill_in 'Name', :with => 'John Doe'
    fill_in 'Email', :with => 'johndoe@email.com'
    click_button 'Create Applicant'
    page.should have_content('Applicant has been created.')
  end
end
