# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Semester.create!([
  {short_semester: "S15", full_semester: "Spring 15", start_date: "2015-01-12", end_date: "2015-05-02"}
])
Course.create!([
  {course_number: "COM531", short_course: "Web Apps", full_course: "Web Application Development", meet_days: 2, semester_id: 1},
  {course_number: "COM580", short_course: "Game Design", full_course: "Fundamentals of Game Design", meet_days: 5, semester_id: 1}
])
Source.create!([
  {short_source: "Challenges…", source_details: "\"Challenges for game designers\". Brathwaite, Brenda, and Ian Schreiber.", many_assignments: true, course_id: 2},
  {short_source: "Rules of Play", source_details: "\"Rules of Play\". Katie Salen Tekinbas and Eric Zimmerman.", many_assignments: true, course_id: 2},
  {short_source: "Learn to…", source_details: "\"Learn to Program (2nd ed.)\". Pine, C. ", many_assignments: true, course_id: 1},
  {short_source: "Agile Web Dev…", source_details: "\"Agile Web Development with Rails 4.\" Ruby, S., Thomas, D., and D. H. Hansson. ", many_assignments: true, course_id: 1},
  {short_source: "http://eloquentjavascript.net/", source_details: "Marijn Haverbeke, Eloquent JavaScript, Part 1", many_assignments: false, course_id: 1}
])
Assignment.create!([
  {short_assignment: "Ch.22-24", assignment_details: "Chapters 22, 23, 24", due_date: "2015-03-04", completed: false, source_id: 2, course_id: 2},
  {short_assignment: "Ch.10-11", assignment_details: "Chapter 10 and 11", due_date: "2015-03-02", completed: true, source_id: 1, course_id: 2},
  {short_assignment: "Ch.11-12", assignment_details: "Chapter 11 and 12", due_date: "2015-03-31", completed: false, source_id: 4, course_id: 1},
  {short_assignment: "Ch.24-25", assignment_details: "Chapter 24 and 25", due_date: "2015-03-31", completed: false, source_id: 4, course_id: 1}
])
