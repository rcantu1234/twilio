json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :who, :where, :when, :what
  json.url appointment_url(appointment, format: :json)
end
