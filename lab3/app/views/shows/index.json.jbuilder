json.array!(@shows) do |show|
  json.extract! show, :id, :name, :genre, :network_id
  json.url show_url(show, format: :json)
end
