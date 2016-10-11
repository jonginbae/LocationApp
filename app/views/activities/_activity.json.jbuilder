json.extract! activity, :id, :teacher_id, :activity_name, :place, :date_from, :date_to, :created_at, :updated_at
json.url activity_url(activity, format: :json)