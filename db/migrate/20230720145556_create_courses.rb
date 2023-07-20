class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :teacher
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
