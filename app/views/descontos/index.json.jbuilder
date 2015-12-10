json.array!(@descontos) do |desconto|
  json.extract! desconto, :id, :porcentagem, :users_id
  json.url desconto_url(desconto, format: :json)
end
