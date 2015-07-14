json.status @teams.any?
json.data @teams do |team|
  json.name team.name
  json.member team.num_of_member
  json.purpose team.purpose
  json.description team.description
end
