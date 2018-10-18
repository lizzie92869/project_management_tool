json.extract! project, :id, :name, :deadline, :status, :budget, :note, :created_at, :updated_at
json.url project_url(project, format: :json)
