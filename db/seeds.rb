User.create!([
  {name: "Kimber", email: "k@test.com", password_digest: "$2a$12$VKOkuJlJDS.kONmbsTusj.5rqZrIME4ayxRzt46vVaBZA/Trjgpda"},
  {name: "Miray", email: "m@test.com", password_digest: "$2a$12$lmqRQNGoDj6leTW6.eFdN.P2EVjWCW8C0wXoj1q33M/rSb.n7kQtW"},
  {name: "Shane", email: "s@test.com", password_digest: "$2a$12$lxCV4zfIMLiI/IXzJQffjefiIeus5x.3TxKRba2WwL6/96ZZb1B96"}
])
Task.create!([
  {user_id: 4, title: "Jog with dogs", description: "Jog down sheffield to wigglyfield and let their hair flow!", deadline: "5/3/2023", completed: false},
  {user_id: 4, title: "groceries", description: "bring list and don't go to the store hungry!", deadline: "5/2/23", completed: false},
  {user_id: 3, title: "Recycling", description: "Take out at night. Keep mother earth happy!", deadline: "2023-05-03T21:00", completed: true},
  {user_id: 2, title: "Dentist", description: "Make appointment for any Thursday", deadline: "2023-05-04T09:00", completed: false},
  {user_id: 2, title: "Debug App", description: "It's got the bugs", deadline: "2023-05-01T10:00", completed: false},
  {user_id: 3, title: "Book Flights", description: "Work conference and bff wedding", deadline: "2023-05-03T12:02", completed: false},
  {user_id: 2, title: "Vacuum", description: "Important! Expecting company.", deadline: "4/29/23", completed: false},
  {user_id: 2, title: "Trash out", description: "Take the trash out", deadline: "2023-05-02T06:01", completed: nil}
])
Category.create!([
  {name: "Household"},
  {name: "Health"},
  {name: "Appointments"}
])
