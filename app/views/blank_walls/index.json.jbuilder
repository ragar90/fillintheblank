json.array!(@blank_walls) do |blank_wall|
  json.extract! blank_wall, :id, :owner_id, :height, :width, :min_budget, :max_budget
  json.url blank_wall_url(blank_wall, format: :json)
end
