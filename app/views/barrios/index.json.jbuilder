json.array!(@barrios) do |barrio|
  json.extract! barrio, :id, :localidad_id, :barrio
  json.url barrio_url(barrio, format: :json)
end
