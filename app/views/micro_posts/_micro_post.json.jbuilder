json.extract! micro_post, :id, :name, :price, :date, :memo, :created_at, :updated_at
json.url micro_post_url(micro_post, format: :json)
