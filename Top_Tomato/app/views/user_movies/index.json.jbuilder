json.array!(@user_movies) do |user_movie|
  json.extract! user_movie, :id
  json.url user_movie_url(user_movie, format: :json)
end
