# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
	User.create!(:user_name => Faker::Name.name, :email => Faker::Internet.unique.email, :password => "password #{index}")
end

10.times do |index|
	Tag.create!(:tag_name => "#tag#{index}")
end

(2..10).each do |index|
	Album.create!(:album_name => "album #{index}", :description => Faker::Lorem.paragraph(2), :cover => nil, :tag => index, :author => index)
end

(2..9).each do |index|
	Photo.create!(:photo_name => "photo #{index}", :album => index, :view => index*10, :like => index*2)
end

(2..10).each do |index|
	Blog.create!(:title => Faker::Lorem.sentence, :content => Faker::Lorem.paragraph(3), :author => index, :tag => index, :view => index*5, :useful => index*2)
end

(2..8).each do |index|
	Pcomment.create!(:content => Faker::Lorem.paragraph(2), :destination => index, :author => index)
end
(2..9).each do |index|
	Bcomment.create!(:content => Faker::Lorem.paragraph(2), :destination => index, :author => index)
end
