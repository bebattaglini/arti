
puts 'Deleting everything...'
puts '------------------'

puts "deleting artist categories"
ArtistCategory.destroy_all
puts "deleting messages"
Message.destroy_all
puts "deleting conversations"
Conversation.destroy_all
puts "deleting images"
Image.destroy_all
puts "deleting categories"
Category.destroy_all
puts "deleting orders"
Order.destroy_all
puts "deleting reviews"
Review.destroy_all
puts "deleting bookings"
Booking.destroy_all
puts "deleting products"
Product.destroy_all
puts "deleting artists"
Artist.destroy_all
puts "deleting users"
User.destroy_all

puts 'Creating categories'
puts '------------------'

categories = ["Photography", "Visual Art", "Cinematography", "Paint", "Sculpture", "Embroidery"]

categories.each do |category|
  ex = Category.create!(name: category)
  puts "- #{ex.name}"
end

if Rails.env.development?
  puts 'Creating a user1'
  puts '------------------'

  user1 = User.create!(
    email: "john@doe.org",
    password: "password",
    first_name: "John",
    last_name: "Doe",
    username: "JohnieBeGood",
    location: "San Sebastian, Spain",
    avatar: "data:image/png;base64,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",
    )

  puts 'Creating a user2'
  puts '------------------'

  user2 = User.create!(
    email: "jane@doe.org",
    password: "password",
    first_name: "Jane",
    last_name: "Doe",
    username: "janehasagun",
    location: "Madrid, Spain",
    avatar: "http://www.crocodeal.eu/wp-content/uploads/2019/01/Square-PhotoWithout.png",
    )

  puts 'Creating a artist1'
  puts '------------------'

  artist1 = Artist.create!(
    email: "caro@batta.org",
    password: "password",
    first_name: "Carolina",
    last_name: "Battaglini",
    bio: "carolina was born in buenos aires in 1995, where she study cinematography at the enerc. she now resides in san sebastian.",
    location: "San Sebastian, Spain",
    link: "https://www.behance.net/carolinaegle",
    avatar: "https://mir-s3-cdn-cf.behance.net/user/230/1f4869147253125.5c80fd63395ea.jpg",
    )

  puts 'Creating a artist2'
  puts '------------------'

  artist2 = Artist.create!(
    email: "luci@manara.org",
    password: "password",
    first_name: "Lucila",
    last_name: "Manara",
    bio: "Lucila Manara (Durham, 1994) lived in Buenos Aires since 1999, where she studied art direction at the enerc(Escuela Nacional de Realización y Experimentación Cinematográfica) in 2018. She lives in Madrid",
    location: "Madrid, Spain",
    link: "https://www.lucilamanara.com/",
    avatar: "https://scontent-dus1-1.xx.fbcdn.net/v/t1.0-9/64841896_10157168952778605_7549243112573370368_o.jpg?_nc_cat=103&_nc_ohc=dzC402Vo394AQkolr-bWH4-pOGUKM6EUaoa3FZpSHjC-HqAKIXlsaxO9w&_nc_ht=scontent-dus1-1.xx&oh=d1e8c6c5d8952d17e36474d937a7d530&oe=5E69B6F9",
    )

  puts 'Adding fake products for Carolina Battaglini...'

  product = Product.create!(
    title: "One",
    description: "picture, print",
    location: "San Sebastian, Spain",
    available: true,
    price: 100,
    artist: artist1,
    category: Category.where(name: "Photography")[0]
  )

  puts "+ #{product.title}"

  puts 'Creating image for product'
  puts '------------------'

  image = Image.create!(data: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/4c7bc781574673.5d0367294eaf2.jpg",
    product_id: 1
    )

  product = Product.create!(
    title: "Two",
    description: "picture, print",
    location: "San Sebastian, Spain",
    available: true,
    price: 150,
    artist: artist1,
    category: Category.where(name: "Photography")[0]
  )

  puts "+ #{product.title}"

  puts 'Creating image for product'
  puts '------------------'

  image = Image.create!(data: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/6ea1d181574673.5d0367294e593.jpg",
    product_id: 1
    )

    product = Product.create!(
    title: "TRE",
    description: "picture, print",
    location: "San Sebastian, Spain",
    available: true,
    price: 300,
    artist: artist1,
    category: Category.where(name: "Photography")[0]
  )

  puts "+ #{product.title}"

  puts 'Creating image for product'
  puts '------------------'

  image = Image.create!(data: "https://mir-s3-cdn-cf.behance.net/project_modules/fs/1243ba72077617.5bdafbe9985f7.jpg",
    product_id: 1
    )

    product = Product.create!(
    title: "QUaTro",
    description: "picture, print",
    location: "San Sebastian, Spain",
    available: true,
    price: 2000,
    artist: artist1,
    category: Category.where(name: "Photography")[0]
  )

  puts "+ #{product.title}"

  puts 'Creating image for product'
  puts '------------------'

  image = Image.create!(data: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/2efadb72078011.5bdafe780d563.jpg",
    product_id: 1
    )

    product = Product.create!(
    title: "5",
    description: "picture, print",
    location: "San Sebastian, Spain",
    available: true,
    price: 100,
    artist: artist1,
    category: Category.where(name: "Photography")[0]
  )

  puts "+ #{product.title}"

  puts 'Creating image for product'
  puts '------------------'

  image = Image.create!(data: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/80ca3472077545.5bdafb5f44b9f.jpg",
    product_id: 1
    )




  puts "Finished seeding!!!"
end
