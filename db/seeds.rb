# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  p = Profile.new(name: Faker::Name.first_name,
                  essay1: Faker::Lorem.paragraph(10))

  3.times do
    p.comments.build(feedback: Faker::Lorem.paragraph(3))
  end

  p.save
end
