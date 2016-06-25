json.array!(@cliente_documentos) do |cliente_documento|
  json.extract! cliente_documento, :id, :cliente_id, :documento, :tipodoc_id, :emisordoc_id, :vencimiento, :codseg
  json.url cliente_documento_url(cliente_documento, format: :json)
end
