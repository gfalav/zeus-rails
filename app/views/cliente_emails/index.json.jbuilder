json.array!(@cliente_emails) do |cliente_email|
  json.extract! cliente_email, :id, :cliente_id, :email, :tipoemail_id
  json.url cliente_email_url(cliente_email, format: :json)
end
