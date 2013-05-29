require 'spec_helper'

feature "Viewing applicants" do
  scenario "Listing all applicants" do
    applicant = Factory.create(:applicant, :name => "John Doe")
    visit '/'
    click_link 'John Doe'
    page.current_url.should == applicant_url(applicant)
  end

end
