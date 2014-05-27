json.array!(@members) do |member|
  json.extract! member, :id, :group_id, :first_name, :last_name
  json.url member_url(member, format: :json)
end
