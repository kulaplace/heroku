json.array!(@statuses) do |status|
  json.extract! status, :id, :time, :number, :posting
  json.url status_url(status, format: :json)
end
