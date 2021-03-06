@client1 = Client.create!( :fname => "demo",
                          :lname => "demo",
                          :organization => "Demo",
                          :email => "demo@hello.com",
                          :phone => "0123456789" )

@user1 = User.create!( :email => @client1.email,
                      :password => "hello2",
                      :client_id => @client1.id,
                      :client => true )

@location1 = Location.create!( :code => "HBC",
                              :name => "Business Center",
                              :address => "Fiskville Rd",
                              :city => "Austin",
                              :state => "TX",
                              :zipcode => "78702",
                              :contact_name => "Katherine",
                              :contact_phone => "1234567890",
                              :contact_email => "kathy@hello.com",
                              :client_id => @client1.id )

@location2 = Location.create!( :code => "RVS",
                              :name => "Riverside Campus",
                              :address => "Grove St",
                              :city => "Austin",
                              :state => "TX",
                              :zipcode => "78741",
                              :contact_name => "Bill",
                              :contact_phone => "1234567890",
                              :contact_email => "bill@hello.com",
                              :client_id => @client1.id )                              
                            

@course_type1 = CourseType.create!( :long_name => "Math Core Strength Plus",
                                   :short_name => "Math CS Plus",
                                   :discipline => "GEDM",
                                   :level => 3,
                                   :client_id => @client1.id )
                                  

@course_type2 = CourseType.create!( :long_name => "Math Application",
                                   :short_name => "Math App",
                                   :discipline => "GEDM",
                                   :level => 4,
                                   :client_id => @client1.id )
                                  

@instructor1 = Instructor.create!( :fname => "David",
                                  :lname => "Lee",
                                  :idn => 1234567,
                                  :location_id => @location1.id,
                                  :phone => "1234567890",
                                  :email => "david@hello.com",
                                  :pay_rate => 12.50,
                                  :client_id => @client1.id )
                                

@instructor2 = Instructor.create!( :fname => "Colten",
                                  :lname => "Sanders",
                                  :idn => 7654321,
                                  :location_id => @location2.id,
                                  :phone => "1234567890",
                                  :email => "colten@hello.com",
                                  :pay_rate => 17.50,
                                  :client_id => @client1.id )

@term1 = Term.create!( :semester => "Fall",
                  :code => "142F",
                  :year => "2014",
                  :number => "2",
                  :reg_start => "2013-09-30",
                  :reg_end => "2013-10-11",
                  :start_date => "2013-10-14",
                  :end_date => "2013-12-06",
                  :add_drop_end => "2013-11-08",
                  :client_id => @client1.id )
                

@term2 = Term.create!( :semester => "Spring",
                  :code => "143S",
                  :year => "2014",
                  :number => "3",
                  :reg_start => "2014-01-06",
                  :reg_end => "2014-01-17",
                  :start_date => "2014-01-20",
                  :end_date => "2014-03-21",
                  :add_drop_end => "2014-02-14",
                  :client_id => @client1.id )
                

@course1 = Course.create!( "synonym"=>"123456", 
                       "course_type_id"=> @course_type1.id, 
                       "section"=>"02", 
                       "term_id"=> @term1.id, 
                       "location_id"=> @location1.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor1.id, 
                       "monday"=>"true", 
                       "wednesday"=>"true", 
                       "friday"=>"true", 
                       "start_time"=>"09:00", 
                       "end_time"=>"10:30", 
                       "room_number"=>" 123", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@course2 = Course.create!( "synonym"=>"654321", 
                       "course_type_id"=> @course_type2.id, 
                       "section"=>"02", 
                       "term_id"=> @term1.id, 
                       "location_id"=> @location2.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor2.id, 
                       "tuesday"=>"true", 
                       "thursday"=>"true", 
                       "start_time"=>"18:00", 
                       "end_time"=>"21:30", 
                       "room_number"=>" 321", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@course3 = Course.create!( "synonym"=>"123456", 
                       "course_type_id"=> @course_type1.id, 
                       "section"=>"02", 
                       "term_id"=> @term2.id, 
                       "location_id"=> @location1.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor1.id, 
                       "monday"=>"true", 
                       "wednesday"=>"true", 
                       "friday"=>"true", 
                       "start_time"=>"09:00", 
                       "end_time"=>"10:30", 
                       "room_number"=>" 123", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@course4 = Course.create!( "synonym"=>"654321", 
                       "course_type_id"=> @course_type2.id, 
                       "section"=>"02", 
                       "term_id"=> @term2.id, 
                       "location_id"=> @location2.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor2.id, 
                       "tuesday"=>"true", 
                       "thursday"=>"true", 
                       "start_time"=>"18:00", 
                       "end_time"=>"21:30", 
                       "room_number"=>" 321", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@admin1 = Admin.create!( "idn"=>"3456789", 
                     "fname"=>"Zach", 
                     "lname"=>"Sartin", 
                     "phone"=>"1234567890", 
                     "email"=>"zach@hello.com", 
                     "location_id"=> @location1.id, 
                     "client_id"=> @client1.id)
                    
                     
@admin2 = Admin.create!( "idn"=>"9876543", 
                     "fname"=>"Doug", 
                     "lname"=>"Jones", 
                     "phone"=>"1234567890", 
                     "email"=>"doug@hello.com", 
                     "location_id"=> @location2.id, 
                     "client_id"=> @client1.id)
                    

@event1 = Event.create!( :term_id => @term1.id,
                    :name => "F142 Orientation",
                    :date => "2013-09-29",
                    :location_id => @location1.id,
                    :room => "123",
                    :max_seats => 100,
                    :start_time => "09:00",
                    :end_time => "15:00",
                    :contact_name => "Patricia",
                    :contact_phone => "1234567890",
                    :contact_email => "pat@hello.com",
                    :client_id => @client1.id )
                  

@event2 = Event.create!( :term_id => @term2.id,
                    :name => "S143 Orientation",
                    :date => "2014-01-02",
                    :location_id => @location1.id,
                    :room => "123",
                    :max_seats => 100,
                    :start_time => "09:00",
                    :end_time => "15:00",
                    :contact_name => "Patricia",
                    :contact_phone => "1234567890",
                    :contact_email => "pat@hello.com",
                    :client_id => @client1.id )

@client1 = Client.create!( :fname => "demo",
                          :lname => "demo",
                          :organization => "Demo",
                          :email => "demo2@hello.com",
                          :phone => "0123456789" )

@user1 = User.create!( :email => @client1.email,
                      :password => "hello2",
                      :client_id => @client1.id,
                      :client => true )

@location1 = Location.create!( :code => "HBC",
                              :name => "Business Center",
                              :address => "Fiskville Rd",
                              :city => "Austin",
                              :state => "TX",
                              :zipcode => "78702",
                              :contact_name => "Katherine",
                              :contact_phone => "1234567890",
                              :contact_email => "kathy2@hello.com",
                              :client_id => @client1.id )

@location2 = Location.create!( :code => "RVS",
                              :name => "Riverside Campus",
                              :address => "Grove St",
                              :city => "Austin",
                              :state => "TX",
                              :zipcode => "78741",
                              :contact_name => "Bill",
                              :contact_phone => "1234567890",
                              :contact_email => "bill2@hello.com",
                              :client_id => @client1.id )                              
                            

@course_type1 = CourseType.create!( :long_name => "Math Core Strength Plus",
                                   :short_name => "Math CS Plus",
                                   :discipline => "GEDM",
                                   :level => 3,
                                   :client_id => @client1.id )
                                  

@course_type2 = CourseType.create!( :long_name => "Math Application",
                                   :short_name => "Math App",
                                   :discipline => "GEDM",
                                   :level => 4,
                                   :client_id => @client1.id )
                                  

@instructor1 = Instructor.create!( :fname => "David",
                                  :lname => "Lee",
                                  :idn => 1234567,
                                  :location_id => @location1.id,
                                  :phone => "1234567890",
                                  :email => "david2@hello.com",
                                  :pay_rate => 12.50,
                                  :client_id => @client1.id )
                                

@instructor2 = Instructor.create!( :fname => "Colten",
                                  :lname => "Sanders",
                                  :idn => 7654321,
                                  :location_id => @location2.id,
                                  :phone => "1234567890",
                                  :email => "colten2@hello.com",
                                  :pay_rate => 17.50,
                                  :client_id => @client1.id )

@term1 = Term.create!( :semester => "Fall",
                  :code => "142F",
                  :year => "2014",
                  :number => "2",
                  :reg_start => "2013-09-30",
                  :reg_end => "2013-10-11",
                  :start_date => "2013-10-14",
                  :end_date => "2013-12-06",
                  :add_drop_end => "2013-11-08",
                  :client_id => @client1.id )
                

@term2 = Term.create!( :semester => "Spring",
                  :code => "143S",
                  :year => "2014",
                  :number => "3",
                  :reg_start => "2014-01-06",
                  :reg_end => "2014-01-17",
                  :start_date => "2014-01-20",
                  :end_date => "2014-03-21",
                  :add_drop_end => "2014-02-14",
                  :client_id => @client1.id )
                

@course1 = Course.create!( "synonym"=>"123456", 
                       "course_type_id"=> @course_type1.id, 
                       "section"=>"02", 
                       "term_id"=> @term1.id, 
                       "location_id"=> @location1.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor1.id, 
                       "monday"=>"true", 
                       "wednesday"=>"true", 
                       "friday"=>"true", 
                       "start_time"=>"09:00", 
                       "end_time"=>"10:30", 
                       "room_number"=>" 123", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@course2 = Course.create!( "synonym"=>"654321", 
                       "course_type_id"=> @course_type2.id, 
                       "section"=>"02", 
                       "term_id"=> @term1.id, 
                       "location_id"=> @location2.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor2.id, 
                       "tuesday"=>"true", 
                       "thursday"=>"true", 
                       "start_time"=>"18:00", 
                       "end_time"=>"21:30", 
                       "room_number"=>" 321", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@course3 = Course.create!( "synonym"=>"123456", 
                       "course_type_id"=> @course_type1.id, 
                       "section"=>"02", 
                       "term_id"=> @term2.id, 
                       "location_id"=> @location1.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor1.id, 
                       "monday"=>"true", 
                       "wednesday"=>"true", 
                       "friday"=>"true", 
                       "start_time"=>"09:00", 
                       "end_time"=>"10:30", 
                       "room_number"=>" 123", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@course4 = Course.create!( "synonym"=>"654321", 
                       "course_type_id"=> @course_type2.id, 
                       "section"=>"02", 
                       "term_id"=> @term2.id, 
                       "location_id"=> @location2.id, 
                       "number"=>"02", 
                       "instructor_id"=> @instructor2.id, 
                       "tuesday"=>"true", 
                       "thursday"=>"true", 
                       "start_time"=>"18:00", 
                       "end_time"=>"21:30", 
                       "room_number"=>" 321", 
                       "min_seats"=>"1", 
                       "max_seats"=>"15", 
                       "budget_code"=>"80001", 
                       "client_id"=> @client1.id)

@admin1 = Admin.create!( "idn"=>"3456789", 
                     "fname"=>"Zach", 
                     "lname"=>"Sartin", 
                     "phone"=>"1234567890", 
                     "email"=>"zach2@hello.com", 
                     "location_id"=> @location1.id, 
                     "client_id"=> @client1.id)
                    
                     
@admin2 = Admin.create!( "idn"=>"9876543", 
                     "fname"=>"Doug", 
                     "lname"=>"Jones", 
                     "phone"=>"1234567890", 
                     "email"=>"doug2@hello.com", 
                     "location_id"=> @location2.id, 
                     "client_id"=> @client1.id)
                    

@event1 = Event.create!( :term_id => @term1.id,
                    :name => "F142 Orientation",
                    :date => "2013-09-29",
                    :location_id => @location1.id,
                    :room => "123",
                    :max_seats => 100,
                    :start_time => "09:00",
                    :end_time => "15:00",
                    :contact_name => "Patricia",
                    :contact_phone => "1234567890",
                    :contact_email => "pat2@hello.com",
                    :client_id => @client1.id )
                  

@event2 = Event.create!( :term_id => @term2.id,
                    :name => "S143 Orientation",
                    :date => "2014-01-02",
                    :location_id => @location1.id,
                    :room => "123",
                    :max_seats => 100,
                    :start_time => "09:00",
                    :end_time => "15:00",
                    :contact_name => "Patricia",
                    :contact_phone => "1234567890",
                    :contact_email => "pat2@hello.com",
                    :client_id => @client1.id )