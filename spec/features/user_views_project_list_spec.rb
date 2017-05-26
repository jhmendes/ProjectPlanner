require 'spec_helper'

# As a user
# I want to view a list of all projects
# So I know what projects are ongoing
# Acceptance Criteria:
#
# On the projects index page, I should see the name of each project.
# On the projects index page, the name of each project should be a link to the project's show page.

feature "index page has a list of all projects" do

	  scenario "user successfully views list of all projects" do
      myproject = Project.create(name: "Super Cool Project", description: "This is a description.")
      
	    visit '/'
      expect(page).to have_content "Super Cool Project"
	  end

end
