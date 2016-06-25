json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :provincia_id, :departamento
  json.url departamento_url(departamento, format: :json)
end
