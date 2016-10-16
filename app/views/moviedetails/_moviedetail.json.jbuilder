json.extract! moviedetail, :id, :title, :year, :rated, :awards, :metascore, :imdbrating, :created_at, :updated_at
json.url moviedetail_url(moviedetail, format: :json)