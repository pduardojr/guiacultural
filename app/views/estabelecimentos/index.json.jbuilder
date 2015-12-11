json.array!(@estabelecimentos) do |estabelecimento|
  json.extract! estabelecimento, :id, :nome, :cnpj
  json.url estabelecimento_url(estabelecimento, format: :json)
end
