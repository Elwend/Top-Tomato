json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :genre, :critics_score, :release_date, :poster_url, :synopsis, :created_at, :updated_at
  json.url movie_url(movie, format: :json)
end
