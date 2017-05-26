require 'spec_helper'


# As a user
# I want to see the tasks of each project
# So I know what needs to completed in the project
# Acceptance Criteria:
#
# On a project's show page, I should see all the name of each task as well as
# the first and last name of the user assigned to the task (if there is someone assigned to the task).

feature "each project lists all associated tasks" do

	  scenario "user successfully views tasks of a specific project" do
			myproject = Project.create(name: "Super Cool Project", description: "This is a description.")
			user = User.create(first_name: "John", last_name: "Mendes")
			task = Task.create(name: "Management of Project", description: "Manage all aspects of this project", user_id: 3, project_id: 4)

	    visit '/'
			click_link "Super Cool Project"
			expect(page).to have_content "Tasks: Management of Project Assigned To: John Mendes"


	  end

end
