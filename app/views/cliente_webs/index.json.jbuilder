json.array!(@cliente_webs) do |cliente_web|
  json.extract! cliente_web, :id, :cliente_id, :web, :tipoweb_id
  json.url cliente_web_url(cliente_web, format: :json)
end
