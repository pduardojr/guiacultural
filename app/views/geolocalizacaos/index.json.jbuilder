json.array!(@geolocalizacaos) do |geolocalizacao|
  json.extract! geolocalizacao, :id, :latitude, :longitude, :user_id
  json.url geolocalizacao_url(geolocalizacao, format: :json)
end
