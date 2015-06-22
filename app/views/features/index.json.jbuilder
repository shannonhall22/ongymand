json.array!(@features) do |feature|
  json.extract! feature, :id, :weights, :cardio, :studios, :classes, :pool, :hot_tub, :basketball, :raquetball, :trainer, :sauna, :gym_id
  json.url feature_url(feature, format: :json)
end
