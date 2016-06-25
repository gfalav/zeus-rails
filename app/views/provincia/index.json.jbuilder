json.array!(@provincia) do |provincium|
  json.extract! provincium, :id, :pais_id, :provincia
  json.url provincium_url(provincium, format: :json)
end
