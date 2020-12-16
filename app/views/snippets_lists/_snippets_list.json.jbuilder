json.extract! snippets_list, :id, :is_public, :tags, :created_at, :updated_at
json.url snippets_list_url(snippets_list, format: :json)
