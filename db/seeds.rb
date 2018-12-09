# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create(genre_name: 'クラシック')
Genre.create(genre_name: 'フィドル')
Genre.create(genre_name: 'ポップス')
Genre.create(genre_name: 'ロック')

require "csv"
CSV.foreach('db/schools.csv') do |row|
  School.create(:school_name => row[0], :address_pref => row[1], :address_city => row[2], :address_block => row[3], :tel => row[4], :lesson_price => row[5], :lesson_time => row[6], :admission_fee => row[7], :self_pr => row[8], :home_page_url => row[9], :card_photo => row[10], :cover_photo => row[11], :status => 1)
end