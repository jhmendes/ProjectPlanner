require 'spec_helper'

# As a user
# I want to see the members of each project
# So I know who is working on the project
# Acceptance Criteria:
#
# On a project's show page, I should see the first name, last name, and email (if any)
# of each user who is working on the project.

feature "listing of all members for specific project" do

	  scenario "user successfully views members of a specific project" do
			myproject = Project.create(name: "Super Cool Project", description: "This is a description.")
			user1 = User.create(first_name: "John", last_name: "Mendes")
			user2 = User.create(first_name: "Leo", last_name: "The Rabbit")
			assignment1 = Assignment.create(user_id: 1, project_id: 2)
			assignment2 = Assignment.create(user_id: 2, project_id: 2)
			# binding.pry
	    visit '/'
			click_link "Super Cool Project"
			expect(page).to have_content "Members: John Mendes Leo The Rabbit"


	  end

end
