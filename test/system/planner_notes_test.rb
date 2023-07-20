require "application_system_test_case"

class PlannerNotesTest < ApplicationSystemTestCase
  setup do
    @planner_note = planner_notes(:one)
  end

  test "visiting the index" do
    visit planner_notes_url
    assert_selector "h1", text: "Planner notes"
  end

  test "should create planner note" do
    visit planner_notes_url
    click_on "New planner note"

    fill_in "Course", with: @planner_note.course_id
    fill_in "Details", with: @planner_note.details
    fill_in "Student", with: @planner_note.student_id
    fill_in "Title", with: @planner_note.title
    fill_in "Todo date", with: @planner_note.todo_date
    fill_in "Workflow state", with: @planner_note.workflow_state
    click_on "Create Planner note"

    assert_text "Planner note was successfully created"
    click_on "Back"
  end

  test "should update Planner note" do
    visit planner_note_url(@planner_note)
    click_on "Edit this planner note", match: :first

    fill_in "Course", with: @planner_note.course_id
    fill_in "Details", with: @planner_note.details
    fill_in "Student", with: @planner_note.student_id
    fill_in "Title", with: @planner_note.title
    fill_in "Todo date", with: @planner_note.todo_date
    fill_in "Workflow state", with: @planner_note.workflow_state
    click_on "Update Planner note"

    assert_text "Planner note was successfully updated"
    click_on "Back"
  end

  test "should destroy Planner note" do
    visit planner_note_url(@planner_note)
    click_on "Destroy this planner note", match: :first

    assert_text "Planner note was successfully destroyed"
  end
end
