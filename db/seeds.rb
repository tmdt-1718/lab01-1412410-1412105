# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



(2..10).each do |index|
	Album.create!(:album_name => "album #{index}", :description => Faker::Lorem.paragraph(2), :photo_id => nil, :user_id => Faker::Number.between(2, 6))
end

(2..30).each do |index|
	Photo.create!(:photo_name => Faker::Avatar.unique.image, :album_id => Faker::Number.between(2, 9), :view => index*10, :like => index*2, :user_id => Faker::Number.between(2, 6))
end
