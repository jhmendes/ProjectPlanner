require 'spec_helper'

# As a user
# I want to see the details of a project
# So I can learn more about each project
# Acceptance Criteria:
#
# On a project's show page, I should see the name and description (if any) of the project.


feature "each project has a show page with its details" do

	  scenario "user successfully views projects details" do

			myproject = Project.create(name: "Super Cool Project", description: "This is a description.")

	    visit '/'
			click_link "Super Cool Project"
			expect(page).to have_content "Super Cool Project Description: This is a description"

	  end

end
