json.array!(@jobs) do |job|
  json.extract! job, :id, :date_posted, :date_applied, :interview
  json.url job_url(job, format: :json)
end
