json.type "FeatureCollection"
json.features @person.years do |year|
# Person has_many :locations, through: :years
  json.type "Feature"
  json.properties do
    json.set! "marker-color", "#C978F3" # will make this different for resto and resid a
     # json.title year.resto
    json.name year.full_name
  end
  json.geometry do
     json.type "Point"
     json.coordinates [year.location['longitude'], year.location['latitude']]
  end # json.geometry
end # features
