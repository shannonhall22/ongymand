json.array!(@gyms) do |gym|
  json.extract! gym, :id, :name, :address, :city, :state, :zip, :phone, :website, :email, :rate, :image_url
  json.url gym_url(gym, format: :json)
end
