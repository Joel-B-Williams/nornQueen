json.extract! roster, :id, :name, :points, :created_at, :updated_at
json.url roster_url(roster, format: :json)
