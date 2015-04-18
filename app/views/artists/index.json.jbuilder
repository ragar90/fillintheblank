json.array!(@artists) do |artist|
  json.extract! artist, :id, :email, :twitter, :facebook, :nickname, :name, :state, :city, :portafolio_1, :portafolio_2, :portafolio_3
  json.url artist_url(artist, format: :json)
end
