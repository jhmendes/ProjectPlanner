project_attributes = [
  {name: "The Glass House", description: "Client wants an entire house built with glass"},
  {name: "The Met", description: "Renovating the Metropolitan Musuem of Art"},
  {name: "The Endzone", description: "Fixing the endzone to Gilette Stadium"}
]

project_attributes.each do |attributes|
  Project.create(attributes)
end

user_attributes = [
  {first_name: "John", last_name: "Mendes"},
  {first_name: "Meghan", last_name: "Sullivan"},
  {first_name: "Leo", last_name: "The Rabbit"}
]

user_attributes.each do |attributes|
  User.create(attributes)
end


task_attributes = [
  {name: "Purchase materials", description: "Responsible for purchasing materials from all vendors"},
  {name: "Get Coffee for everyone", description: "We all need coffee"},
  {name: "Manage all financials for project", description: "Stuff costs money, better manage it for us"}
]

task_attributes.each do |attributes|
  Task.create(attributes)
end

assignment_attributes = [
  {user_id: 1, project_id: 1},
  {user_id: 2, project_id: 2},
  {user_id: 3, project_id: 3}
]

assignment_attributes.each do |attributes|
  Assignment.create(attributes)
end
