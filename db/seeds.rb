# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱seeding data🌱......."


###################### CATEGORIES #################################################

shoes = Category.create(name: "Shoes")
watches = Category.create(name: "Watches")
phones = Category.create(name: "Phones")
cars= Category.create(name: "Cars")
laptops= Category.create(name: "Laptops")


######################## PRODUCTS ###################################################
shoe1 = Product.create(name:"Stan Smith", description:"Adidas, kids, casual", price:55, image_url:"https://assets.adidas.com/images/h_320,f_auto,q_auto:sensitive,fl_lossy/d0720712d81e42b1b30fa80800826447_9366/Stan_Smith_Shoes_White_M20607_M20607_01_standard.jpg", category_id: shoes.id)
shoe2 = Product.create(name:"Superstar", description:"Adidas, women, casual", price:90, image_url:"https://assets.adidas.com/images/h_320,f_auto,q_auto:sensitive,fl_lossy/12365dbc7c424288b7cdab4900dc7099_9366/Superstar_Shoes_White_FW3553_FW3553_01_standard.jpg", category_id: shoes.id)
shoe3 = Product.create(name:"SK80-Low", description:"Vans, mens, casual", price:60, image_url:"https://images.vans.com/is/image/Vans/UUK24I-HERO?$583x583$",category_id: shoes.id)
shoe4 = Product.create(name:"Michael Feburary SK8-Hi", description:"Vans, mens, casual", price:55, image_url:"https://images.vans.com/is/image/Vans/MV122M-HERO?$583x583$", category_id: shoes.id)
shoe5 = Product.create(name:"Nizza X Disney", description:"Adidas, kids, casual", price:55, image_url:"https://assets.adidas.com/images/h_320,f_auto,q_auto:sensitive,fl_lossy/ef901c7aeac042578eceab9d0159196c_9366/Nizza_x_Disney_Sport_Goofy_Shoes_White_FW0651_01_standard.jpg", category_id: shoes.id)
shoe6 = Product.create(name:"SS-PM-0093", description:"Hushpuppies, women, casual", price:30, image_url:"https://cdn.shopify.com/s/files/1/0016/0074/9623/products/SS-PM-0093_1_800x800.jpg?v=1570601253",category_id: shoes.id)



watch1 = Product.create(name:"wrist watch", description:"mens watch ",price:25, image_url:"https://media.istockphoto.com/id/1439979572/photo/watches-on-a-white-background.jpg?s=612x612&w=0&k=20&c=4B9rOHc_zhIJLfKOsrnSIELj7bHugakG0V6OFd7oyu4=", category_id: watches.id)
watch2 = Product.create(name:"vintage watch", description:"vintage ladies wrist watch", price:23,  image_url:"https://media.istockphoto.com/id/175913530/photo/watch.jpg?s=612x612&w=0&k=20&c=GYxHTYJ_Pau80EZ0K8wVGxZelud7f-xuoNW5WuMzrNw=", category_id: watches.id)
watch3 = Product.create(name:"pixel watch", description:"google pixel watch",price:108, image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4a6Yo8idK1daYkxFuS0KzBOWoZ_1eP-1fWw&usqp=CAU", category_id: watches.id)
watch4 = Product.create(name:"smart watch", description:"women smart watch", price:89, image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDTXgANESFnJt6hneBud-KpmZS8GJRm7Nodw&usqp=CAU", category_id: watches.id)



phone1 = Product.create(name:"iphone", description:"silver iphone x", price:134, image_url:"https://images.unsplash.com/photo-1555375771-14b2a63968a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c21hcnQlMjBwaG9uZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", category_id: phones.id)
phone2 = Product.create(name:"iphone11", description:"iphone 11 pro", price:125, image_url:"https://images.unsplash.com/photo-1575695342320-d2d2d2f9b73f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNtYXJ0JTIwcGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60", category_id: phones.id)
phone3 = Product.create(name:"Harambee smartphone", description:"i14proMax4G Android 2+16G", price:103, image_url:"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQSmDiJjh4s5pSQEKGPJopn4ByWMIxJS3RD7IXoXKles1u-WYBY_cPzQl3ZH7U-NQD-5VxI7u5gdiw&usqp=CAc", category_id: phones.id)



car1 = Product.create(name:"forbes 11", description:"yellow forbes 11 car", price: 256, image_url:"https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80", category_id: cars.id)
car2 = Product.create(name:"Mercedes Benz", description:"Mercedes Benz", price:300, image_url:"https://images.unsplash.com/photo-1609184166822-bd1f1b991a06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=899&q=80", category_id: cars.id)



laptop1 = Product.create(name:"mac book", description:"Apple MacBook Air M1 MGND3 13.3″ 13 inch", price:199, image_url:"https://image.kilimall.com/kenya/shop/store/goods/7966/2022/03/1647720309326066036a288a440febd9b5657ff80ebda_720.jpeg.webp", category_id: laptops.id)
laptop2 = Product.create(name:"Dell latitude", description:"Latitude 5420 Laptop", price:197, image_url:"https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/dell-client-products/notebooks/latitude-notebooks/14-5420/media-gallery/la5420nt_cnb_00055lf110_gy_5000x5000_gettyimages-1254825733.psd?fmt=pjpg&pscan=auto&scl=1&wid=4384&hei=2671&qlt=100,1&resMode=sharp2&size=4384,2671&chrss=full&imwidth=5000", category_id: laptops.id)



######################## USERS ###################################################
10.times do
    User.create(
        email: Faker::Internet.free_email,
        password: Faker::Internet.password
    )
end



######################## REVIEWS #################################################
rev_1 = Review.create(user_id: 1, product_id: shoe1.id, content: "Good experience",  star_rating: 4)
rev_2 = Review.create(user_id: 2, product_id: car1.id, content: "as good as original ", star_rating: 4)
rev_3 = Review.create(user_id: 3, product_id: laptop1.id, content: "sitable experience", star_rating: 2)
rev_4 = Review.create(user_id: 4, product_id:  watch1.id, content: "amazing site", star_rating: 5)









puts "Done 🌱seeding! "
puts "Done 🌱seeding! "
