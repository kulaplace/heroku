json.array!(@teams) do |team|
  json.extract! team, :id, :name, :num_students
  json.url team_url(team, format: :json)
end
