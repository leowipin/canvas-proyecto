require "test_helper"

class PlannerNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planner_note = planner_notes(:one)
  end

  test "should get index" do
    get planner_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_planner_note_url
    assert_response :success
  end

  test "should create planner_note" do
    assert_difference("PlannerNote.count") do
      post planner_notes_url, params: { planner_note: { course_id: @planner_note.course_id, details: @planner_note.details, student_id: @planner_note.student_id, title: @planner_note.title, todo_date: @planner_note.todo_date, workflow_state: @planner_note.workflow_state } }
    end

    assert_redirected_to planner_note_url(PlannerNote.last)
  end

  test "should show planner_note" do
    get planner_note_url(@planner_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_planner_note_url(@planner_note)
    assert_response :success
  end

  test "should update planner_note" do
    patch planner_note_url(@planner_note), params: { planner_note: { course_id: @planner_note.course_id, details: @planner_note.details, student_id: @planner_note.student_id, title: @planner_note.title, todo_date: @planner_note.todo_date, workflow_state: @planner_note.workflow_state } }
    assert_redirected_to planner_note_url(@planner_note)
  end

  test "should destroy planner_note" do
    assert_difference("PlannerNote.count", -1) do
      delete planner_note_url(@planner_note)
    end

    assert_redirected_to planner_notes_url
  end
end
