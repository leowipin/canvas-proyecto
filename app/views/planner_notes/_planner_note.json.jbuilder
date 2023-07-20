json.extract! planner_note, :id, :todo_date, :title, :details, :student_id, :course_id, :workflow_state, :created_at, :updated_at
json.url planner_note_url(planner_note, format: :json)
