json.array!(@eventos) do |evento|
  json.extract! evento, :id, :data, :endereco, :preco, :class_etaria, :descricao, :coordenada, :estabelecimento_id
  json.url evento_url(evento, format: :json)
end
