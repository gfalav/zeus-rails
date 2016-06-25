json.array!(@direccions) do |direccion|
  json.extract! direccion, :id, :calle_id, :nro, :pdepto, :acceso
  json.url direccion_url(direccion, format: :json)
end
