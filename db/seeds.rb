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


# --------------------------------------USER ------------------------------------------------------- 

user_1 = User.create(first_name: 'Franklin', last_name: 'Bado', email: 'fbado66@gmail.com', phone: 347-781-2308, location: 'New York', username: 'fbado', password: 'abc123')


# -------------------Array for Images  -----------------------------------
search_houses = Unsplash::Photo.search("houses")
houses_pics = search_houses.map{|pic| {url: pic[:urls][:small], alt:pic[:alt_description]  } }

search_apartment = Unsplash::Photo.search("apartment")
apartment_pics = search_apartment.map{|pic| {url: pic[:urls][:small], alt:pic[:alt_description]  } }

search_room = Unsplash::Photo.search("room")
room_pics = search_room.map{|pic| {url: pic[:urls][:small], alt:pic[:alt_description]  } }

search_bedroom = Unsplash::Photo.search("bedroom")
bedroom_pics = search_bedroom.map{|pic| {url: pic[:urls][:small], alt:pic[:alt_description]  } }

search_kitchen = Unsplash::Photo.search("kitchen")
kitchen_pics = search_kitchen.map{|pic| {url: pic[:urls][:small], alt:pic[:alt_description]  } }

search_bathroom = Unsplash::Photo.search("bathroom")
bathroom_pics = search_bathroom.map{|pic| {url: pic[:urls][:small], alt:pic[:alt_description]  } }


# --------------------------CATEGOGRY 1 LISTINGS ----------------------------------------------------------

listing_1 = Listing.create(title: 'Philadelphia, Pennsylvania, United States', catch_phrase: 'Historic Philly Architecture: Quiet neighborhood B', details: 'This is a lovely trinity style home (a Philadelphia specific style of architecture) in one of Philadelphias nicest neighborhoods. We provide fast wifi, free coffee with the option of decaf and tea. A smart tv with amazon prime, Netflix and more alone with cozy beds in a great location in the city.', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 113, description: "This space is a traditional home, made originally from red brick, you can still see the bones of the home. It's a really cool experience and it's truly an authentic older Philadelphia home.", host_info: 'Sean typically responds within an hour')

listing_2 = Listing.create(title: 'Philadelphia, Pennsylvania, United States', catch_phrase: 'Cozy & Clean 2BR+Parking+Wifi l The BROAD Suite', details: 'Amenities include - Professional cleaning after each stay. High speed internet for work, school, and play. Complimentary, on-site garage parking. In-house gym. Exceptional customer service and experienced hosts who will be there when you need us.', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 120, description: "Enjoy the foosball table and other games in the loft. Sing your heart out in the karaoke machine!", host_info: 'Sophie & Elizabeth typically responds within an hour')

listing_3 = Listing.create(title: 'Lake Harmony, Pennsylvania, United States', catch_phrase: 'The “Mosey Moose Lodge” at Lake Harmony', details: 'Amazing location! Minutes to ski slopes (Jack Frost / Big Boulder less than 5 miles). Ride your bike to Lake Harmony and Split Rock Resort. Short drive to Hickory Run State Park. Gorgeous gourmet chef kitchen with heated floors.', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 279, description: "Beautiful rustic look and decorations but you won’t be “roughing it” with the high end furnishings and finishes.", host_info: 'Katie typically responds within an hour')

listing_4 = Listing.create(title: 'Tobyhanna Township, Pennsylvania, United States', catch_phrase: 'Cottage in the Poconos Arrowhead Lake Pet friendly', details: 'A freshly renovated cozy cottage at Arrowhead Lake that is pet friendly at no extra cost! 2 bedrooms and 1 bathroom with ample room. Free Wifi! Linens Included! The living room has a TV with Chromecast and cable. The kitchen is fully stocked with everything you need to cook! There is a great deck with outdoor seating to enjoy lake living. You can access the lake, community pool, and amenities. We are located near many popular area attractions. Make this your Pocono getaway destination!', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 179, description: "As long time residents of Arrowhead Lake, we are committed to providing a great experience to our renters and their pets which is why we don't charge extra as we fully understand that pets are family. We have been renting out our long time cabin here for about 3 years and take pride in going above and beyond for our guests!", host_info: 'Annie typically responds within an hour')

listing_5 = Listing.create(title: 'Lake Harmony, Pennsylvania, United States', catch_phrase: 'Super Clean - Boulder Lk & Lk Harmony - Central AC
', details: 'Updated 2BR/2BA well-kept townhouse w/central AC in a quiet Lake Harmony area. Passes to private Boulder Lake Club included with the rental. Enjoy the beach, pool and boat rentals (summer months). Close to everything you want to do. Three minutes to Big Boulder and 30+/- min. to 3 other ski areas. Hickory Run State Park 10 min away. Historic Jim Thorpe 25 min. H2Ooooh water park 5 min. Kalahari & Great Wolf Lodge 25 min. Pocono Raceway is 10 min. Mount Airy Casino 30 min', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 129, description: "The home is tastefully decorated with newer furnishings and plenty of seating. Central air conditioning. Free fast WiFi is included. There are two queen sized beds and a set of bunk beds, all with new cotton bedding.!", host_info: 'Kim typically responds within an hour')


# --------------------------CATEGOGRY 2 LISTINGS ----------------------------------------------------------

listing_6 = Listing.create(title: 'Pittsburgh, Pennsylvania, United States', catch_phrase: 'Cliffside Contemporary with Irreplaceable Views', details: 'Amazing views, rooftop patio, contemporary design and furnishings are just the beginning for your amazing stay at our cliffside paradise. This architecturally stunning home offers a fully equipped kitchen, two decks to dine and relax on. Beyond its walls, you can visit the nearby Station Square shops and restaurants, Monongahela Incline, Pittsburgh Zoo and PPG Aquarium, Warhol Museum, the Rivers Casino, or watch the Penguins at PPG Arena, Steelers at Heinz Field, and the Pirates at PNC Park!', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 229, description: "Family and friends can come together at this charming 3-bedroom home overlooking the city of champions! The Roanoke Trail starts across the street from the house where you can get more amazing good views and ample exercise. Please note that the home will be furnished with contemporary furnishings, and will be a WOW (thus the photos without furniture, but expect photos by late November). Hot tub coming in late FEBRUARY due to supply chain constraints (if you require the hot tub for your stay, please check with us before booking)! Our first bookings will occur in January, 2021.", host_info: 'Isabel typically responds within an hour')

listing_7 = Listing.create(title: 'Pittsburgh, Pennsylvania, United States', catch_phrase: 'Manchester Suites 102', details: 'Cozy apartment on Pittsburghs Historic North Side. Enjoy staying in a Manor building with coded entry for security and privacy. Studio with separate, fully equipped kitchen. Walking distance from Heinz Field, Casino, T-Station, as well as many North Shore destinations/venues. Come back and relax with TV, cable and WiFi. Hosts are on site for any needs. Do not miss this little gem!', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 109, description: "Stocked with toiletries, fresh towels,and Keurig for that morning coffee.", host_info: 'Ethan typically responds within an hour')

listing_8 = Listing.create(title: 'Pocono Pines, Pennsylvania, United States', catch_phrase: 'HEATED INDOOR POOL - POCONOS', details: 'Welcome to KaMoose a private home located in the high end gated community of Lake Naomi - Timber Trails. KaMoose sleeps 8 people with 3 bedrooms + loft area & 2 bathrooms. Our home is surrounded by ferns & trees in the community of Timber Trails, located in Lake Naomi.', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 149, description: "Our home is an air conditioned/ gas hot water baseboard heated house that includes a living room, dining room with seating for six, a kitchen with island seating and granite counter tops, a family room with an additional table and six chairs, a swim spa pool room, 3 bedrooms and a loft with two queen mattresses.", host_info: 'Tom typically responds within an hour')

listing_9 = Listing.create(title: 'Tobyhanna, Pennsylvania, United States', catch_phrase: 'Oak Cabin at Pocono Mountains', details: 'Welcome to brand new Oak Cabin;3 bedroom/2 bathroom eclectic home filled with wood and boho vibe.We are located in the heart of Pocono Mountains in quiet neighborhood close to all attraction, such a skiing, hiking, kayaking, waterfall, waterparks. The home is perfect gateway busy city life.Best suited for couples/friends or small families with older kids.If you are homebody its perfect stay for you;relax at home with your loved ones or venture out to explore the Pocono Mountains', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 149, description: "The cabin has an open floor concept. Downstairs offers a very large
common space that includes living room/dining room combo with a kitchen, full bath (with standing shower) & a bedroom with a queen bed. The living room has a large fireplace you are welcome to bring wood & use; the hanging chair is a favorite spot to lounge for all but there’s also a comfy couch and oversized ottoman chair. Plenty of room to relax, talk or play for hours. We have some board games for you.", host_info: 'Zack typically responds within an hour')


listing_10 = Listing.create(title: 'Scranton, Pennsylvania, United States', catch_phrase: 'Travelers/Artists /Writers/Fall Foliage /Location', details: 'An experiential gathering place for creative thinkers and adventurous people seeking a true Scrantonian encounter.', image_1_url: houses_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 149, description: "Convenient first floor entry overlooking garden with morning sun. Santa Barbara inspired flooring greets you in this spacious two room living space. A queen size bed and easy work space feature fast internet and variable Phillips lighting ( from your phone with Hue app)", host_info: 'Carol typically responds within an hour')

# --------------------------CATEGOGRY 3 LISTINGS ----------------------------------------------------------

listing_11 = Listing.create(title: 'Wellsville, Pennsylvania, United States', catch_phrase: 'The Perch at Persimmon Hill, State Park Getaway', details: 'An experiential gathering place for creative thinkers and adventurous people seeking a true Scrantonian encounter.', image_1_url: apartment_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 149, description: "Convenient first floor entry overlooking garden with morning sun. Santa Barbara inspired flooring greets you in this spacious two room living space. A queen size bed and easy work space feature fast internet and variable Phillips lighting ( from your phone with Hue app)", host_info: 'Suzane typically responds within an hour')

listing_12 = Listing.create(title: 'Atlantic City, New Jersey, United States', catch_phrase: 'Cozy Ocean front Condo with AMAZING views!', details: 'Condo on the 26th floor of the Atlantic Palace suites with AMAZING views of the ocean and Atlantic City! Convenient location with direct access to the boardwalk and walking distance to many casinos, including the Hard Rock , Oceans, Showboat, Resorts, and Ballys. Featuring a flat-screen TV, small kitchenette, updated bath with jacuzzi, a queen size bed and space for an air mattress (air mattress not provided).', image_1_url: apartment_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 99, description: "Your stay includes a parking space. Kitchenette has a two burner stove top, microwave, dishes, glasses, refrigerator, and coffee maker (coffee and sugar are provided)", host_info: 'Karen typically responds within an hour')

listing_13 = Listing.create(title: 'Margate City, New Jersey, United States', catch_phrase: 'Newly Renovated 2BR Condo with Parking', details: 'Newly renovated 2BR and 2BA condo that comes with parking. Property in immaculate condition, and is located 1 1/2 blocks from the beach. Brand new wide plank white oak hardwood floors, quartz countertops and stainless steel appliances. Cable and washer dryer included. The building also has a shared roof deck. Plenty of closet space as well. One block from Dairy Bar, Johnnys Cafe, Shuckers and other shops and restaurants.', image_1_url: apartment_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 89, description: "Common roof deck", host_info: 'Rob typically responds within an hour')

listing_14 = Listing.create(title: 'Absecon, New Jersey, United States', catch_phrase: 'Motel Room-minutes from Atlantic City and Stockton', details: 'Single Bed Motel Room minutes from Atlantic City and Stockton University. Provides ultimate privacy, parking, your own bathroom, king sized bed.', image_1_url: apartment_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 59, description: "conveniently located minutes from Atlantic City and Stockton University", host_info: 'Gary typically responds within an hour')

listing_15 = Listing.create(title: 'Atlantic City, New Jersey, United States', catch_phrase: 'On the Boardwalk*Ocean View*Jaccuzzi', details: 'Atlantic Palace is bordered by Atlantic City’s deep, spectacular beach and world-renowned boardwalk. This luxurious 31-story resort offers intrinsic oceanic views amidst myriad nightlife venues, casinos, dining offerings and retail shops. The upscale amenities and contemporary suites offer rejuvenating balance to the excitement of it all. Our Unit is on the 21st floor.', image_1_url: apartment_pics.sample[:url], image_2_url: room_pics.sample[:url], image_3_url: bedroom_pics.sample[:url], image_4_url: kitchen_pics.sample[:url], image_5_url: bathroom_pics.sample[:url], price: 109, description: "The unit has wonderful views of the Atlantic City boardwalk and the Pier, comes equipped with a full kitchen and dining area, and full bathroom with jacuzzi!", host_info: 'Calvin typically responds within an hour')

# ------------------------------------RESERVATION -------------------------------------

reservation_1 = Reservation.create(user_id: 1, listing_id: 1, check_in_date: '10/12/2020', check_out_date: '10/14/2020', guest_count: 2, message_to_host: 'Hello')

#  ------------------------------------ CATEGORIES ----------------------------------------------
category_1 = Category.create(title: "Unique Stays", content: "Spaces that are more than just a place to sleep", image_url: "https://a0.muscache.com/im/pictures/15159c9c-9cf1-400e-b809-4e13f286fa38.jpg?im_w=480")
category_2 = Category.create(title: "Entire homes", content: "Confortable private places, with room for friends or family", image_url: "https://a0.muscache.com/im/pictures/fdb46962-10c1-45fc-a228-d0b055411448.jpg?im_w=480")
category_3 = Category.create(title: "Hotel Stays", content: "Who says work-travels cannot be fun", image_url: "https://a0.muscache.com/im/pictures/d7ae203c-8b7a-4507-b992-8c62d8eb9eda.jpg?im_w=480")



# -------------------------------------LISTING CATEGORIES -----------------------------------------------

listing_category_1 = ListingCategory.create(listing_id: 1, category_id: 1)
listing_category_2 = ListingCategory.create(listing_id: 2, category_id: 1)
listing_category_3 = ListingCategory.create(listing_id: 3, category_id: 1)
listing_category_4 = ListingCategory.create(listing_id: 4, category_id: 1)
listing_category_5 = ListingCategory.create(listing_id: 5, category_id: 1)


listing_category_6 = ListingCategory.create(listing_id: 6, category_id: 2)
listing_category_7 = ListingCategory.create(listing_id: 7, category_id: 2)
listing_category_8 = ListingCategory.create(listing_id: 8, category_id: 2)
listing_category_9 = ListingCategory.create(listing_id: 9, category_id: 2)
listing_category_10 = ListingCategory.create(listing_id: 10, category_id: 2)


listing_category_11 = ListingCategory.create(listing_id: 11, category_id: 3)
listing_category_12 = ListingCategory.create(listing_id: 12, category_id: 3)
listing_category_13 = ListingCategory.create(listing_id: 13, category_id: 3)
listing_category_14 = ListingCategory.create(listing_id: 14, category_id: 3)
listing_category_15 = ListingCategory.create(listing_id: 15, category_id: 3)



# --------------------------------------REVIEW--------------------------------------------
review_1 = Review.create(listing_id: 1, user_id: 1, nickname: 'banana', content: 'Best place ever to scape reality')
