require 'faker'

Task.delete_all

10.times do |index|
    Task.create(
        title: Faker::Educator.course_name,
        position: index,
        completed: index%2==0? true : false
    )
end