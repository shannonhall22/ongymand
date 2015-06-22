json.array!(@gym_features) do |gym_feature|
  json.extract! gym_feature, :id, :gym_id, :feature_id
  json.url gym_feature_url(gym_feature, format: :json)
end
