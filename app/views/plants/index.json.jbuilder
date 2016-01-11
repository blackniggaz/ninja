json.array!(@plants) do |plant|
  json.extract! plant, :id, :name, :description, :price
  json.url plant_url(plant, format: :json)
end
