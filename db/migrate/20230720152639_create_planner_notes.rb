class CreatePlannerNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :planner_notes do |t|
      t.datetime :todo_date
      t.string :title
      t.text :details
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.string :workflow_state

      t.timestamps
    end
  end
end
