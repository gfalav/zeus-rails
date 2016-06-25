json.array!(@pais) do |pai|
  json.extract! pai, :id, :pais
  json.url pai_url(pai, format: :json)
end
