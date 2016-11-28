# Create a learning management system. Users can add a learner to the database (CREATE), update that learner's information with the course information (MANIPULATE), and see who is enrolled in which courses (RETRIEVE)

# I. DATABASE SETUP
  # require gems for fake name generation and database making via ruby
  require 'sqlite3'
  require 'faker'

  # set up database lms.db
  database = SQLite3::Database.new("lms.db")
  database.results_as_hash = true

  # set up table learners (id, first_name, last_name, dept, job title, courses_taking, courses_completed)
  create_table0 = <<-SQL
    CREATE TABLE IF NOT EXISTS learners (
      id INTEGER PRIMARY KEY,
      first_name VARCHAR (255),
      last_name VARCHAR (255),
      department VARCHAR (255),
      job_title VARCHAR (255),
      date_of_hire DATETIME,
      courses_taking VARCHAR (255),
      courses_completed  VARCHAR (255)
    )
  SQL

  # set up table courses (id, title, prereqs (identified by other course ids?, category, tags)
  create_table1 = <<-SQL
    CREATE TABLE IF NOT EXISTS courses (
      id INTEGER PRIMARY KEY,
      title VARCHAR (255),
      prereqs INT,
      category VARCHAR (255),
      tags VARCHAR (255)
    )

  SQL

  # set up table enrolled (lists learner_id and course_id as foreign keys to see who is enrolled in what)
  create_table2 = <<-SQL
    CREATE TABLE IF NOT EXISTS enrolled (
      id INTEGER PRIMARY KEY,
      learner_id INT,
      course_id INT,
      FOREIGN KEY (learner_id) REFERENCES learners(id),
      FOREIGN KEY (course_id) REFERENCES courses(id)
    )
  SQL

  # create the three tables
  database.execute(create_table0)
  database.execute(create_table1)
  database.execute(create_table2)

# II. DATA PRACTICE WITHOUT A UI
  # add test learner and course
  # add the test data's keys to enrolled
  # database.execute("INSERT INTO learners (first_name, last_name, department, job_title, date_of_hire) VALUES ('Joe', 'Johnson', 'Finance', 'Accountant I', 20150212)")
  # database.execute("INSERT INTO courses (title, prereqs, category, tags) VALUES ('Accounting at CompanyX', 'Orientation', 'Informational', 'accounting' )")
  # database.execute("INSERT INTO enrolled (learner_id, course_id) VALUES (2, 1)")

  # add more courses to prep for UI section then comment out
  # database.execute("INSERT INTO courses (title, prereqs, category, tags) VALUES ('Orientation', 'none', 'Informational', 'new_hires' )")
  # database.execute("INSERT INTO courses (title, prereqs, category, tags) VALUES ('Emotional Intelligence', 'none', 'Team Building', 'new_hires' )")
  # database.execute("INSERT INTO courses (title, prereqs, category, tags) VALUES ('Holding Meetings', 'none', 'Work Flow', 'new_hires' )")

  # commands to clean up courses DB
  # courses = database.execute("DELETE FROM courses WHERE title='Accounting at CompanyX'")
  # courses = database.execute("DELETE FROM courses WHERE id BETWEEN 33 AND 41")
  # courses = database.execute("SELECT * FROM courses")
  # p courses


# III. USER INTERFACE. USER CAN:

  # A. add a learner to the database (CREATE)
  # def add_learner(database, first_name, last_name, department, job_title, date_of_hire)
  #   database.execute("INSERT INTO learners (first_name, last_name, department, job_title, date_of_hire) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, department, job_title, date_of_hire])
  # end

  #   # I know full well this will break as soon as someone has more than one first or last name. My career goals revolve around mastering the ridiculousness of names in data handling, storage, and output, so I'm starting with a basic assumption of one first name and one last name just to begin getting acquainted.
  #   puts "Welcome to the Recruiting Department. We are preparing online courses for August's group of hires. Please provide the full name of your new hire."
  #   name = gets.chomp.split(" ")
  #   name1 = name[0]
  #   name2 = name[1]

  #   add_learner(database, name[0], name[1], 'Recruiting', 'Recruiter', 20140725)

  # # feedback to user
  # puts "Thank you for adding a new learner! The updated roster is:"
  # learners = database.execute("SELECT first_name, last_name FROM learners")
  # p learners

  # # B. update that learner's information with the course information (MANIPULATE)

  # def update_learner(database, date_of_hire, courses_taking)
  #   database.execute("UPDATE learners SET courses_taking=? WHERE date_of_hire=?", [courses_taking, date_of_hire])
  # end

  # puts "Please provide the date of hire for the batch of employees you need to enroll (YYYYMMDD), and the course name, separated by a comma."
  # info = gets.chomp.split(" ")
  # date_of_hire = info[0]
  # course_name = info[1]

  # update_learner(database, info[0], info[1])

  # #feedback to user
  # puts "Thank you for updating this batch of new hires. We will ensure they are enrolled in #{info[1]}."

  # updated_learners = database.execute("SELECT first_name, last_name, courses_taking FROM learners")
  # p updated_learners


  # C. see who is enrolled in which courses (RETRIEVE)

  def course_roster(database, course_title)
    database.execute("SELECT learners.first_name, learners.last_name, learners.courses_taking, courses.title FROM learners, courses, enrolled WHERE enrolled.learner_id = learners.id AND enrolled.course_id = courses.id")
  end

  puts "Please provide a course name to see who is enrolled."
  course_title = gets.chomp

  p course_roster(database, course_title)

  POSSIBLE NOTHING IS PRINTING BECAUSE LEARNERS.COURSESTAKING DOESNT KNOW THAT THE STRING ORIENTATION CORRESPONDS TO COURSEID WHATEVER THE COURSEID IS IN COURSES. REVIEW HOW WE SET THINGS UP IN 8.4

# APPENDIX: PRACTICE CODE

# Object Relational Mapping (ORM), and ruby .each to try retrieving data along with video
# learners = database.execute("SELECT * FROM learners")
# p learners
# learners.each do |learner|
#   puts "#{learner[1]} works in #{learner[3]} and was hired on #{learner[5]}"
# end


# Delete data accidentally created each time lms.rb runs--the multiple Joe Johnson entries and the extra entries from the 5.times do call, beyond id = 35.
  # learners = database.execute("DELETE FROM learners WHERE first_name = 'Joe'")
  # learners = database.execute("DELETE FROM learners WHERE id BETWEEN 36 AND 58")
