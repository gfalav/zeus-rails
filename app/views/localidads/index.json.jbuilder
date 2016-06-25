json.array!(@localidads) do |localidad|
  json.extract! localidad, :id, :municipio_id, :localidad
  json.url localidad_url(localidad, format: :json)
end
