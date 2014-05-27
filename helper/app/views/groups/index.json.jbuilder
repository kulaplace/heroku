json.array!(@groups) do |group|
  json.extract! group, :id, :num_members, :name
  json.url group_url(group, format: :json)
end
