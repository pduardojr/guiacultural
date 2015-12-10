json.array!(@users) do |user|
  json.extract! user, :id, :nome, :email, :data_nasc, :senha, :evento_id
  json.url user_url(user, format: :json)
end
