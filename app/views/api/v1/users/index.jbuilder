json.users do |json|
  json.array! @users do |user|
    json.extract! user, :id, :email, :name, :created_at
  end
end

