json.extract! volunteer_help_request, :id, :title, :description, :deadline, :city, :status, :image, :user_id, :created_at, :updated_at
json.url volunteer_help_request_url(volunteer_help_request, format: :json)
