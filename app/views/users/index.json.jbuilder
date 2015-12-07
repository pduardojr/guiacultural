json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :datanasc, :senha
  json.url user_url(user, format: :json)
end
