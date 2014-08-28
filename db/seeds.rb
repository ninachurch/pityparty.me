# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

##image links

@images = ["http://i.imgur.com/EaNmbVG.jpg?1", "http://i.imgur.com/HGzWgjj.jpg?4883", "http://i.imgur.com/pdEal7q.jpg", "http://i.imgur.com/LtDyYKS.jpg", "http://i.imgur.com/umSuskL.jpg", "http://i.imgur.com/EZZmWHB.jpg", "http://i.imgur.com/NHYBHpL.jpg", "http://i.imgur.com/hMzWUTv.jpg", "http://i.imgur.com/jScJ09K.jpg", "http://i.imgur.com/pcw2EKe.jpg", "http://i.imgur.com/ODypwpx.jpg", "http://i.imgur.com/1Fb0U02.jpg", "http://i.imgur.com/Oeig4I4.jpg", "http://i.imgur.com/kgCQ0uD.jpg"]

##create fake reasons
10.times do
  Reason.create(name: Faker::Commerce.product_name)
end

15.times do
  Cheerup.create(visual_source: @images[cycle])
end

@themes = Theme.all
##create sample craft objects
14.times do |cycle|
  Craft.create(name: Faker::Commerce.product_name,
              description: Faker::Company.catch_phrase,
              source_url: Faker::Internet.url('example.com'),
              image_url: @images[cycle],
              theme_id: @themes.sample.id)
end

##create 5 items for each craft
crafts =  Craft.all
crafts.each_with_index do |craft, index|
  @craft_id = index + 1
  5.times do
    Item.create(craft_id: @craft_id, name: @search_items.sample)
  end
end
