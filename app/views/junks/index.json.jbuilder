json.array!(@junks) do |junk|
  json.extract! junk, :id
  json.url junk_url(junk, format: :json)
end
