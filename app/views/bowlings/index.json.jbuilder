json.array!(@bowlings) do |bowling|
  json.extract! bowling, :id, :score, :first_roll, :second_roll
  json.url bowling_url(bowling, format: :json)
end
