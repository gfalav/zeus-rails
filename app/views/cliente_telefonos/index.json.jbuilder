json.array!(@cliente_telefonos) do |cliente_telefono|
  json.extract! cliente_telefono, :id, :cliente_id, :telefono, :tipotel_id
  json.url cliente_telefono_url(cliente_telefono, format: :json)
end
