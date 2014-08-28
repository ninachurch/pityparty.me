# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


##image links

@images = ["http://i.imgur.com/EaNmbVG.jpg?1", "http://i.imgur.com/HGzWgjj.jpg?4883", "http://i.imgur.com/pdEal7q.jpg", "http://i.imgur.com/LtDyYKS.jpg", "http://i.imgur.com/umSuskL.jpg", "http://i.imgur.com/EZZmWHB.jpg", "http://i.imgur.com/NHYBHpL.jpg", "http://i.imgur.com/hMzWUTv.jpg", "http://i.imgur.com/jScJ09K.jpg", "http://i.imgur.com/pcw2EKe.jpg", "http://i.imgur.com/ODypwpx.jpg", "http://i.imgur.com/1Fb0U02.jpg", "http://i.imgur.com/Oeig4I4.jpg", "http://i.imgur.com/kgCQ0uD.jpg"]

@reason_names = ["Family is Crazy", "Significant Other Suckiness", "No Friends", "I'm a Princess", "Fucking School", "No Money No Fun", "Just Pity Me", "I'm Fat"]

##create fake reasons
@reason_names.each do |reason|
  Reason.create(name: reason)
end

##create fake cheerups
40.times do
  Cheerup.create(visual_source: @images.sample)
end

@reasons = Reason.all
@cheerups = Cheerup.all

@reasons.each do |reason|
  10.times do
    reason.cheerups << @cheerups.sample
  end
end

@cheerups.each do |cheerup|
  3.times do
    cheerup.reasons << @reasons.sample
  end
end