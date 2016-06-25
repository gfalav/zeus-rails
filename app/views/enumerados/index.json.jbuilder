json.array!(@enumerados) do |enumerado|
  json.extract! enumerado, :id, :radical, :descripcion
  json.url enumerado_url(enumerado, format: :json)
end
