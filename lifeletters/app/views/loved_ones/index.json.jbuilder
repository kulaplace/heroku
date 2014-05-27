json.array!(@loved_ones) do |loved_one|
  json.extract! loved_one, :id, :first_name, :last_name, :user_id
  json.url loved_one_url(loved_one, format: :json)
end
