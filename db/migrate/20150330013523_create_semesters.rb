class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :short_semester
      t.text :full_semester
      t.date :start_date
      t.date :end_date
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :semesters, :users
  end
end
