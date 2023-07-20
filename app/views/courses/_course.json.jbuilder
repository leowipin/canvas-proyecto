json.extract! course, :id, :course_name, :teacher, :start_time, :end_time, :created_at, :updated_at
json.url course_url(course, format: :json)
