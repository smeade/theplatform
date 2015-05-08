json.array!(@scratchpads) do |scratchpad|
  json.extract! scratchpad, :id, :name, :description, :active, :starts_at
  json.url scratchpad_url(scratchpad, format: :json)
end
