json.array!(@companies) do |company|
  json.extract! company, :id, :industry, :function, :number_of_jobs
  json.url company_url(company, format: :json)
end
