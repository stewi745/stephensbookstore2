json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :address, :dob, :email, :payment_method
  json.url user_url(user, format: :json)
end
