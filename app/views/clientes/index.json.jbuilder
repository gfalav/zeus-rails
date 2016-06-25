json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :apellido, :apellido2, :nombres, :documento, :tipodoc_id, :emisordoc_id, :contacto, :ciiu_id, :tcliente_id, :direccion_id
  json.url cliente_url(cliente, format: :json)
end
