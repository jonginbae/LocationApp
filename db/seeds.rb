
Teacher.destroy_all
p "Teacher Destroy: #{Teacher.all.count}"
# create_table "teachers", force: :cascade do |t|
#   t.string   "user_id"
#   t.string   "email"
#   t.text     "password_diget"
#   t.string   "first_name"
#   t.string   "last_name"
#   t.string   "phone_number"
#   t.string   "position"
#   t.datetime "created_at",     null: false
#   t.datetime "updated_at",     null: false
t1 = Teacher.create user_id: 't0001', email: 'au.jib0610@gmail.com', password: 'chicken', password_confirmation: 'chicken', first_name: 'John', last_name: 'Smith', phone_number: '0000000000', position: 'A'
t2 = Teacher.create user_id: 't0002', email: 'au.jib0610@gmail.com', password: 'chicken', password_confirmation: 'chicken', first_name: 't2', last_name: 't22', phone_number: '0000000000', position: 'B'
t3 = Teacher.create user_id: 't0003', email: 'au.jib0610@gmail.com', password: 'chicken', password_confirmation: 'chicken' , first_name: 't3' , last_name: 't33' , phone_number: '0000000000' , position: 'C'
t4 = Teacher.create user_id: 't0004' , email: 'au.jib0610@gmail.com', password: 'chicken', password_confirmation: 'chicken' , first_name: 't4' , last_name: 't44' , phone_number: '0000000000' , position: 'D'
puts "Teacher Count: #{Teacher.all.count} \n\n"


Activity.destroy_all;
p "Activity Destroy: #{Activity.all.count}"
  # create_table "activities", force: :cascade do |t|
  #   t.integer  "teacher_id"
  #   t.string   "activity_name"
  #   t.string   "place"
  #   t.datetime "date_from"
  #   t.datetime "date_to"
  #   t.datetime "created_at",    null: false
  #   t.datetime "updated_at",    null: false
a1 = Activity.create teacher_id: t1.id, activity_name: 'Enjoy School Life', place: 'Moutain' , date_from: '2016-10-10 00:20:00 UTC' , date_to: '2016-10-10 00:20:00 UTC'
a2 = Activity.create teacher_id: t2.id, activity_name: 'Enjoy School Life2', place: 'Moutain' , date_from: '2016-10-10 00:20:00 UTC' , date_to: '2016-10-10 00:20:00 UTC'
a3 = Activity.create teacher_id: t3.id, activity_name: 'Enjoy School Life3', place: 'Moutain' , date_from: '2016-10-10 00:20:00 UTC' , date_to: '2016-10-10 00:20:00 UTC'
a4 = Activity.create teacher_id: t4.id, activity_name: 'Enjoy School Life4', place: 'Moutain' , date_from: '2016-10-10 00:20:00 UTC' , date_to: '2016-10-10 00:20:00 UTC'
puts "Activity Count: #{Activity.all.count}\n\n"


Student.destroy_all;
p "Activity Destroy: #{Student.all.count}"
# create_table "students", force: :cascade do |t|
#   t.string   "first_name"
#   t.string   "last_name"
#   t.string   "email"
#   t.string   "position"
#   t.string   "parent1_first_name"
#   t.string   "parent1_last_name"
#   t.string   "parent1_phone_number"
#   t.string   "parent2_first_name"
#   t.string   "parent2_last_name"
#   t.string   "parent2_phone_name"
#   t.string   "parent1_email"
#   t.string   "parent2_email"
#   t.datetime "created_at",           null: false
#   t.datetime "updated_at",           null: false
#   t.string  "student_id"
s1 = Student.create student_id: 's001', first_name: 's1', last_name: 's11', email: 'au.jibae0610@gmail.com', position: 'A', parent1_first_name: 'p1', parent1_last_name: 'p2', parent2_first_name: 'p2', parent2_last_name: 'p2', parent1_phone_number: '000000000', parent2_phone_name: '00000000', parent1_email: 'au.jibae0610@gmail.com', parent2_email: 'au.jibae0610@gmail.com'
s2 = Student.create student_id: 's002', first_name: 's2', last_name: 's22', email: 'au.jibae0610@gmail.com', position: 'A', parent1_first_name: 'p1', parent1_last_name: 'p1', parent2_first_name: 'p2', parent2_last_name: 'p2', parent1_phone_number: '000000000', parent2_phone_name: '00000000', parent1_email: 'au.jibae0610@gmail.com', parent2_email: 'au.jibae0610@gmail.com'
s3 = Student.create student_id: 's003', first_name: 's3', last_name: 's33', email: 'au.jibae0610@gmail.com', position: 'B', parent1_first_name: 'p1', parent1_last_name: 'p1', parent2_first_name: 'p2', parent2_last_name: 'p2', parent1_phone_number: '000000000', parent2_phone_name: '00000000', parent1_email: 'au.jibae0610@gmail.com', parent2_email: 'au.jibae0610@gmail.com'
s4 = Student.create student_id: 's004', first_name: 's4', last_name: 's44', email: 'au.jibae0610@gmail.com', position: 'B', parent1_first_name: 'p1', parent1_last_name: 'p1', parent2_first_name: 'p2', parent2_last_name: 'p2', parent1_phone_number: '000000000', parent2_phone_name: '00000000', parent1_email: 'au.jibae0610@gmail.com', parent2_email: 'au.jibae0610@gmail.com'
puts "Student Count: #{Student.all.count}\n\n"


ActivityGroup.destroy_all;
p "ActivityGroup Destroy: #{ActivityGroup.all.count}"
  # create_table "activity_groups", force: :cascade do |t|
  #   t.integer  "activity_id"
  #   t.integer  "student_id"
  #   t.string   "confirm"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false

ag1 = ActivityGroup.create activity_id: a1.id , student_id: s1.id
ag2 = ActivityGroup.create activity_id: a1.id , student_id: s2.id
ag3 = ActivityGroup.create activity_id: a2.id , student_id: s3.id
ag4 = ActivityGroup.create activity_id: a2.id , student_id: s4.id
puts "ActivityGroup Count: #{ActivityGroup.all.count}\n\n"
