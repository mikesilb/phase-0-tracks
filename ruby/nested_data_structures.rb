=begin school_classroom_list = []
=end
#school_classroom_list = [nil, nil, nil, nil, nil,



   teachers = {

        lead_teacher: {
             name:  'Linda Stevens',
             address:  '254 Hunt Dr.',
             phone_num: '783-4534',
             id: 2568
       },

        teachers_aid:  [{   #Two teacher's aids
            name: 'Sally Jacobs',
            address: '687 Bone St.',
            phone_num:'343-7894',
            id: 3687
        },
        {
           name: 'Will Arnold',
           address: '7986 Majestic Dr.',
           phone_num: '678-6567',
           id: 345
        }]
  }





  students = [{                   # 4 students
           name: 'Daniel Green',
           address: '9809 Moon St.',
           phone_num: 354-7683,
           id: 567

   },
   {
           name: 'Stephanie Cheer',
           address: '32 Jones Ave.',
           phone_num: '897-3457',
           id: 35
    },
    {
           name: 'Jeremy Jam',
           address: '9239 Pearl St.',
           phone_num: '659-7890',
           id: 234

    },
    {
          name: 'Melissa Chalk',
          address: '23 Johnson Lane',
          phone_num: '789-4345',
          id: 299
    }]

=begin

#, nil, nil, nil] # The remaining unfilled classrooms




=begin
puts school_classroom_list[5][:students][2]

puts school_classroom_list[5][:teachers_aid][1][:address]

puts school_classroom_list[5][:lead_teacher][:id]
=end
puts teachers[:lead_teacher]
puts teachers[:teachers_aid][1]

puts students[2]