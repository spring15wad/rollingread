class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :short_assignment
      t.text :assignment_details
      t.date :due_date
      t.date :completed
      t.integer :source_id
      t.belongs_to :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :assignments, :courses
  end
end
