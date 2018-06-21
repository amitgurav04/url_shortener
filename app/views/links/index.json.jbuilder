json.array!(@links) do |link|
  json.extract! link, :id, :input_url, :output_url, :http_status
  json.url link_url(link, format: :json)
end
