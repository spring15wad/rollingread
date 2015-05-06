User.create!([
  {username: "mfreema55", provider: "twitter", uid: "2774519113"}
])
Semester.create!([
  {short_semester: "S15", full_semester: "Spring 15", start_date: "2015-01-12", end_date: "2015-05-02", user_id: 1},
  {short_semester: "S15", full_semester: "Spring 15", start_date: "2015-01-12", end_date: "2015-05-02", user_id: 2}
])
Course.create!([
  {course_number: "COM531", short_course: "Web Apps", full_course: "Web Application and Development", meet_days: ["2"], all_days: ["2015-01-13", "2015-01-20", "2015-01-27", "2015-02-03", "2015-02-10", "2015-02-17", "2015-02-24", "2015-03-03", "2015-03-10", "2015-03-17", "2015-03-24", "2015-03-31", "2015-04-07", "2015-04-14", "2015-04-21", "2015-04-28"], semester_id: 1},
  {course_number: "COM580", short_course: "Game Design", full_course: "Fundamentals of Game Design", meet_days: ["1", "3"], all_days: ["2015-01-12", "2015-01-14", "2015-01-19", "2015-01-21", "2015-01-26", "2015-01-28", "2015-02-02", "2015-02-04", "2015-02-09", "2015-02-11", "2015-02-16", "2015-02-18", "2015-02-23", "2015-02-25", "2015-03-02", "2015-03-04", "2015-03-09", "2015-03-11", "2015-03-16", "2015-03-18", "2015-03-23", "2015-03-25", "2015-03-30", "2015-04-01", "2015-04-06", "2015-04-08", "2015-04-13", "2015-04-15", "2015-04-20", "2015-04-22", "2015-04-27", "2015-04-29"], semester_id: 1},
  {course_number: "COM531", short_course: "Web Apps", full_course: "Web Application and Development", meet_days: ["2"], all_days: ["2015-01-13", "2015-01-20", "2015-01-27", "2015-02-03", "2015-02-10", "2015-02-17", "2015-02-24", "2015-03-03", "2015-03-10", "2015-03-17", "2015-03-24", "2015-03-31", "2015-04-07", "2015-04-14", "2015-04-21", "2015-04-28"], semester_id: 2},
  {course_number: "COM580", short_course: "Game Design", full_course: "Fundamentals of Game Design", meet_days: ["1", "3"], all_days: ["2015-01-12", "2015-01-14", "2015-01-19", "2015-01-21", "2015-01-26", "2015-01-28", "2015-02-02", "2015-02-04", "2015-02-09", "2015-02-11", "2015-02-16", "2015-02-18", "2015-02-23", "2015-02-25", "2015-03-02", "2015-03-04", "2015-03-09", "2015-03-11", "2015-03-16", "2015-03-18", "2015-03-23", "2015-03-25", "2015-03-30", "2015-04-01", "2015-04-06", "2015-04-08", "2015-04-13", "2015-04-15", "2015-04-20", "2015-04-22", "2015-04-27", "2015-04-29"], semester_id: 2}
])
Source.create!([
  {short_source: "Challenges…", source_details: "\"Challenges for game designers\". Brathwaite, Brenda, and Ian Schreiber.", many_assignments: true, course_id: 2},
  {short_source: "Rules of Play", source_details: "\"Rules of Play\". Katie Salen Tekinbas and Eric Zimmerman.", many_assignments: true, course_id: 2},
  {short_source: "Learn to…", source_details: "\"Learn to Program (2nd ed.)\". Pine, C. ", many_assignments: true, course_id: 1},
  {short_source: "Agile Web Dev…", source_details: "\"Agile Web Development with Rails 4.\" Ruby, S., Thomas, D., and D. H. Hansson. ", many_assignments: true, course_id: 1},
  {short_source: "Challenges…", source_details: "\"Challenges for game designers\". Brathwaite, Brenda, and Ian Schreiber.", many_assignments: true, course_id: 4},
  {short_source: "Rules of Play", source_details: "\"Rules of Play\". Katie Salen Tekinbas and Eric Zimmerman.", many_assignments: true, course_id: 4},
  {short_source: "Learn to…", source_details: "\"Learn to Program (2nd ed.)\". Pine, C. ", many_assignments: true, course_id: 3},
  {short_source: "Agile Web Dev…", source_details: "\"Agile Web Development with Rails 4.\" Ruby, S., Thomas, D., and D. H. Hansson. ", many_assignments: true, course_id: 3}
])
Assignment.create!([
  {short_assignment: "Ch.22-24", assignment_details: "Chapters 22, 23, 24", due_date: "2015-03-04", completed: nil, source_id: 2, course_id: 2},
  {short_assignment: "Ch.10-11", assignment_details: "Chapter 10 and 11", due_date: "2015-03-02", completed: nil, source_id: 1, course_id: 2},
  {short_assignment: "Ch.11-12", assignment_details: "Chapter 11 and 12", due_date: "2015-03-31", completed: nil, source_id: 4, course_id: 1},
  {short_assignment: "Ch.24-25", assignment_details: "Chapter 24 and 25", due_date: "2015-03-31", completed: nil, source_id: 4, course_id: 1},
  {short_assignment: "Ch.22-24", assignment_details: "Chapters 22, 23, 24", due_date: "2015-03-04", completed: nil, source_id: 6, course_id: 4},
  {short_assignment: "Ch.10-11", assignment_details: "Chapter 10 and 11", due_date: "2015-03-02", completed: nil, source_id: 5, course_id: 4},
  {short_assignment: "Ch.11-12", assignment_details: "Chapter 11 and 12", due_date: "2015-03-31", completed: nil, source_id: 8, course_id: 3},
  {short_assignment: "Ch.24-25", assignment_details: "Chapter 24 and 25", due_date: "2015-03-31", completed: nil, source_id: 8, course_id: 3}
])
