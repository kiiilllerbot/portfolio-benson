json.extract! activity, :id, :title, :description, :user_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
