# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


artists = Artist.create([
  { name: 'The Arctic Monkeys', photo_url: 'http://www.arcticmonkeysnews.com/wp-content/uploads/2014/09/Arctic-Monkeys-2010-Large-Background-Wallpaper-For-Computer.jpg'},
  { name: 'Portugal The Man', photo_url: 'http://www.billboard.com/files/styles/promo_650/public/media/portugal-the-man-650-430-hayley-young.jpg'},
  { name: 'Dr Dog', photo_url: 'http://www.anti.com/media/press/Dr._Dog_by_Nicky_Devine_Flag_Sitting_1.jpg'}
  ])
