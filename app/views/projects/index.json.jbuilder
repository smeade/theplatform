json.array!(@projects) do |project|
  json.extract! project, :id, :account_id, :name, :headline, :subhead, :slug, :notice, :starts_at, :ends_at, :active
  json.url project_url(project, format: :json)
end
