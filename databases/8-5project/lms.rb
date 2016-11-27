# Steps

# require gems for fake name generation and database making via ruby
require 'sqlite3'
require 'faker'

# set up database lms.db
database = SQLite3::Database.new("lms.db")

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

# add test learner, course
database.execute("INSERT INTO learners (first_name, last_name, department, job_title, date_of_hire) VALUES ('Joe', 'Johnson', 'Finance', 'Accountant I', 20150212)")
database.execute("INSERT INTO courses (title, prereqs, category, tags) VALUES ('Accounting at CompanyX', 'Orientation', 'Informational', 'accounting' )")

# add more courses for learners to be enrolled in

# review string delimiter, Object Relational Mapping (ORM)

# ruby .each to run an INSERT sql command to add students to the courses

# ruby interface to add learners

# run an update or delete command? update courses_taking and courses_completed when a course is done?
