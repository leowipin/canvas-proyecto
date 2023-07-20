class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_number
      t.date :date_of_birth
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
