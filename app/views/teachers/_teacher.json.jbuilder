json.extract! teacher, :id, :user_id, :email, :password_digest, :first_name, :last_name, :phone_number, :position, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
