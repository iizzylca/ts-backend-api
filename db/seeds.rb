# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Review.destroy_all
Order.destroy_all
Cart.destroy_all

MenuItem.destroy_all

Restaurant.destroy_all
User.destroy_all


# User Seed

5.times do
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.unique.safe_email,
        password: 'password',
        address: Faker::Address.street_address, 
        phone: '333-333-3333'
    )
end



# Restaurant Seed

Restaurant.create(
    name: 'Tsukiji Sushi',
    description: 'Tsukiji Sushi is a modern and traditional Japanese restaurant, it was inspired by one of our co-founders Israel Canessa who had the desire to bring high quality Japanese cuisine to America. Being of Latino descent he understood that sticking to tradition and having fresh ingredients would be the key to our success.
    Our goal is for every customer to experience Japanese fast food at its best while still delivering healthy options. We only use the freshest ingredients and import most of our products from Greece to keep our cuisine and taste authentic. We take pride in preparing every meal with great care and dedication to quality. We look forward to servicing you. Sayonara!',
    image_url: 'https://i.pinimg.com/originals/80/70/96/8070964cddd9b143da47ca45615c37aa.jpg',
    email: 'tsukiji_sushi@gmail.com',
    phone: '333-333-3333'

)

# Review Seed

15.times do
    Review.create!(
        content:Faker::Lorem.sentence, 
        rating: rand(0...5),
        user_id: User.all.sample.id,
        restaurant_id: Restaurant.all.sample.id 
    )
end

#MenuItem Seed 

25.times do
    MenuItem.create!(
        title: Faker::Food.sushi,
        description: Faker::Food.description,
        ingredients: Faker::Food.ingredient,
        image_url: 'https://cdn11.bigcommerce.com/s-ek50668lzs/images/stencil/1280x1280/products/2542/2806/tunasushi2_1511_detail__43883.1577640165.jpg?c=1?imbypass=on',
        price: rand(3...25),
        restaurant_id: Restaurant.all.sample.id
    )
end



#Order Seed 

50.times do 
    Order.create!(
        total: rand(3...500),
        user_id: User.all.sample.id,
        menu_item_id: MenuItem.all.sample.id    
        )
    end
    
    
    Cart.create!(
        total: rand(3...500),
        quantity: rand(0...100),
        active: true,
        user_id: User.all.sample.id,
        menu_item_id: MenuItem.all.sample.id
    )   



puts User.all.count

puts Restaurant.all.count

puts Review.all.count

puts MenuItem.all.count

puts Order.all.count

puts Cart.all.count

