Manager.create!(
email: 'admin@manager',
password: '199204',
)

Member.create!([
  {email: 'nobunaga@member',password: '199508',last_name: '織田',first_name: '信長',last_name_kana: 'オダ',first_name_kana: 'ノブナガ',}
  ])

Tag.create([
{ name: '古墳時代' },
{ name: '飛鳥時代' },
{ name: '奈良時代' },
{ name: '平安時代' },
{ name: '鎌倉時代' },
{ name: '室町時代' },
{ name: '安土桃山時代' },
{ name: '江戸時代' },
{ name: '明治時代' },
{ name: '大正時代' },
{ name: '昭和時代' },
])




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
