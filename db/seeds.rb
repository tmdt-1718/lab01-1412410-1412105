# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
	User.create!(:user_id => index, :user_name => "user #{index}", :email => "email #{index}", :password => "password #{index}")
end

10.times do |index|
	Tag.create!(:tag_id => index, :tag_name => "tag #{index}")
end

10.times do |index|
	Album.create!(:album_id => index, :album_name => "album #{index}", :description =>"description #{index}", :photo_id => nil, :tag_id => index, :user_id => index)
end

10.times do |index|
	Photo.create!(:photo_id => index, :photo_name => "photo #{index}", :album_id => index, :view => index*10, :like => index*2)
end

10.times do |index|
	Blog.create!(:blog_id => index, :title => "blog #{index}", :content => "content #{index}", :photo_id => index, :user_id => index, :tag_id => index, :view => index*5, :useful => index*2)
end

(1..3).each do |index|
	Comment.create!(:comment_id => index, :content => "content #{index}", :type_des => 1, :photo_id => index, :blog_id => nil, :album_id => nil, :user_id => index)
end
(4..6).each do |index|
	Comment.create!(:comment_id => index, :content => "content #{index}", :type_des => 2, :photo_id => nil, :blog_id => index, :album_id => nil, :user_id => index)
end
(7..9).each do |index|
	Comment.create!(:comment_id => index, :content => "content #{index}", :type_des => 3, :photo_id => nil, :blog_id => nil, :album_id => index, :user_id => index)
end
