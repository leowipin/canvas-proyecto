json.extract! student, :id, :first_name, :last_name, :id_number, :date_of_birth, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
