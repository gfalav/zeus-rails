json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :departamento_id, :municipio
  json.url municipio_url(municipio, format: :json)
end
