json.extract! task, :id, :title, :completed, :position, :created_at, :updated_at
json.url task_url(task, format: :json)
