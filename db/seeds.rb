# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Listing.destroy_all
Reservation.destroy_all
Category.destroy_all
ListingCategory.destroy_all
Review.destroy_all

user_1 = User.create(first_name: 'Franklin', last_name: 'Bado', email: 'fbado66@gmail.com', phone: 347-781-2308, location: 'New York')
listing_1 = Listing.create(title: 'Lake harmony', catch_phrase: 'The Mosey Moose Lodge', details: 'details array', image_1_url: 'image_1 coming soon', image_2_url: 'image_2 comming soon', price: 200, description: "description information goes here", host_info: 'host information will go here')
reservation_1 = Reservation.create(user_id: 1, listing_id: 1, check_in_date: '10/12/2020', check_out_date: '10/14/2020', guest_count: 2, message_to_host: 'Hello')
category_1 = Category.create(name: "heaven")
listing_category_1 = ListingCategory.create(listing_id: 1, category_id: 1)
review_1 = Review.create(listing_id: 1, user_id: 1, nickname: 'banana', content: 'Best place ever to scape reality')
