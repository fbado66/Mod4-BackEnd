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
listing_1 = Listing.create(title: 'Philadelphia, Pennsylvania, United States', catch_phrase: 'Historic Philly Architecture: Quiet neighborhood B', details: 'This is a lovely trinity style home (a Philadelphia specific style of architecture) in one of Philadelphias nicest neighborhoods. We provide fast wifi, free coffee with the option of decaf and tea. A smart tv with amazon prime, Netflix and more alone with cozy beds in a great location in the city.', image_1_url: 'https://a0.muscache.com/im/pictures/miso/Hosting-45812629/original/90866fc0-1a85-4574-a626-3388612cb967.jpeg?im_w=720', image_2_url: 'https://a0.muscache.com/im/pictures/65b52f20-3b92-48fc-9c22-18b15e31ef35.jpg?im_w=720', image_3_url: "https://a0.muscache.com/im/pictures/1260845c-040f-4fe8-9e7a-68bc72059653.jpg?im_w=720", image_4_url: "https://a0.muscache.com/im/pictures/0eb4e738-9759-46c3-9d68-79c2ee832c5f.jpg?im_w=720", image_5_url: "https://a0.muscache.com/im/pictures/miso/Hosting-45812629/original/6c63b268-24d5-4d91-bc2a-cc435072ac16.jpeg?im_w=720", price: 113, description: "This space is a traditional home, made originally from red brick, you can still see the bones of the home. It's a really cool experience and it's truly an authentic older Philadelphia home.", host_info: 'Sean typically responds within an hour')
listing_2 = Listing.create(title: 'Philadelphia, Pennsylvania, United States', catch_phrase: 'Clean apt just for you | 1BR in Philadephia', details: 'Stay for 30+ nights (minimum nights and rates are FIRM) where you’ll have the entire apartment all to yourself at THE GRIFFIN CENTER CITY. The apartment has beautiful finishes and comes fully outfitted with kitchen, bedroom, & bathroom essentials. This spot is ideal for anyone looking for a place they can truly live temporarily. We take your experience personally and can’t wait to host you in your home away from home.', image_1_url: 'https://a0.muscache.com/im/pictures/9fca544f-e7aa-4064-9693-0c853d43de0f.jpg?im_w=1200', image_2_url: 'https://a0.muscache.com/im/pictures/3ea9bff0-111d-45a2-8bc7-0237f8156cfa.jpg?im_w=1200', image_3_url: "https://a0.muscache.com/im/pictures/f258d1d8-99d5-4834-9c9b-48c5bd896677.jpg?im_w=1200", image_4_url: "https://a0.muscache.com/im/pictures/8d868b20-ca0a-49ef-9130-b6a448688493.jpg?im_w=1200", image_5_url: "https://a0.muscache.com/im/pictures/6454f55a-37ee-47ae-b02f-533a2a4b5332.jpg?im_w=1200", price: 144, description: "This space is a traditional home, made originally from red brick, you can still see the bones of the home. It's a really cool experience and it's truly an authentic older Philadelphia home.", host_info: 'Sean typically responds within an hour')

reservation_1 = Reservation.create(user_id: 1, listing_id: 1, check_in_date: '10/12/2020', check_out_date: '10/14/2020', guest_count: 2, message_to_host: 'Hello')
category_1 = Category.create(title: "Unique Stays", content: "Spaces that are more than just a place to sleep", image_url: "https://a0.muscache.com/im/pictures/15159c9c-9cf1-400e-b809-4e13f286fa38.jpg?im_w=480")
category_2 = Category.create(title: "Entire homes", content: "Confortable private places, with room for friends or family", image_url: "https://a0.muscache.com/im/pictures/fdb46962-10c1-45fc-a228-d0b055411448.jpg?im_w=480")
category_3 = Category.create(title: "Hotel Stays", content: "Who says work-travels cannot be fun", image_url: "https://a0.muscache.com/im/pictures/d7ae203c-8b7a-4507-b992-8c62d8eb9eda.jpg?im_w=480")

listing_category_1 = ListingCategory.create(listing_id: 1, category_id: 1)
review_1 = Review.create(listing_id: 1, user_id: 1, nickname: 'banana', content: 'Best place ever to scape reality')
