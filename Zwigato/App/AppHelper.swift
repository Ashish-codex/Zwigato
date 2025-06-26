//
//  AppHelper.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 26/06/25.
//

import Foundation
import SwiftUI

class AppHelper{
    
    static let appTheme: LinearGradient = LinearGradient(
        colors: [.appRed, .appOragne, ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    static let randomImageUrl = "https://picsum.photos/300"
    
    static let arrRestaurantWithMenuItems: [ModelRestaurant] = [
        ModelRestaurant(
            name: "McDonald's",
            imageName: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2025/5/22/7d75687b-e820-4d04-95c7-010ae56cb94a_32399.JPG",
            rating: 4.5,
            deliveryTime: "25-30 mins",
            cuisine: "Burgers, Beverages, Cafe, Desserts",
            location: "Borivali",
            deal: "₹50 OFF",
            menuItem: [
                ModelRestaurant.ModelMenuItem(
                        name:"Crispy Veggie Burger.",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/12/7a3244bf-3091-4ae6-92e3-13be841a753e_b21f7a05-24b3-43f8-a592-beb23e6b69fa.png",
                        rating: 4.4,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "A flavorful patty made with a blend of 7 premium veggies, topped with zesty cocktail sauce, all served between soft, premium buns. Perfectly satisfying and full of flavor.",
                        price: 200
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Korean Mc Aloo Tikki Burger Combo (M).",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/3/20/3c74ee13-5fdc-477e-8e2f-07924f0b246d_4c91e66e-bf0b-4039-8d29-3564b0efc688.png",
                        rating: 3.8,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Introducing a taste sensation like no other: the Korean Chicken Surprise, where a crispy chicken patty meets delicious Gochujang sauce, crunchy lettuce, and soft, toasted buns",
                        price: 99
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"McSaver Korean Mc Aloo Tikki Burger",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/3/20/4617b70d-c983-422d-9950-2e79e6cd93dc_03c3c584-589e-4579-97d9-c71fca41840d.png",
                        rating: 5.0,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Experience the bold flavors of Korea with our limited-time McAloo Tikki burger, boasting a signature Aloo patty, delicious Gochujang sauce, fresh lettuce + Beverage of your choice",
                        price: 159
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"McSaver Korean Mc Egg Burger",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/3/20/4617b70d-c983-422d-9950-2e79e6cd93dc_03c3c584-589e-4579-97d9-c71fca41840d.png",
                        rating: 4.0,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Egg-cellent news! Our Korean McEgg is here, packed with a steamed egg patty, delicious Gochujang sauce, and crunchy lettuce with beverage of your choice",
                        price: 189
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"McSpicy Paneer Burger with Multi-Millet Bun",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/9/18/70eb5956-3666-47f4-bcf8-1f5075207222_fd9e2a06-3f27-47e3-88aa-86895ffaa65e.png",
                        rating: 4.2,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Spice up your meal with a healthier bite! Try your McSpicy Paneer Burger with the nutritious multi-millet bun.",
                        price: 229
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Crispy Veggie Burger.",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/12/7a3244bf-3091-4ae6-92e3-13be841a753e_b21f7a05-24b3-43f8-a592-beb23e6b69fa.png",
                        rating: 4.4,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "A flavorful patty made with a blend of 7 premium veggies, topped with zesty cocktail sauce, all served between soft, premium buns. Perfectly satisfying and full of flavor.",
                        price: 200
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Korean Mc Aloo Tikki Burger Combo (M).",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/3/20/3c74ee13-5fdc-477e-8e2f-07924f0b246d_4c91e66e-bf0b-4039-8d29-3564b0efc688.png",
                        rating: 3.8,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Introducing a taste sensation like no other: the Korean Chicken Surprise, where a crispy chicken patty meets delicious Gochujang sauce, crunchy lettuce, and soft, toasted buns",
                        price: 99
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"McSaver Korean Mc Aloo Tikki Burger",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/3/20/4617b70d-c983-422d-9950-2e79e6cd93dc_03c3c584-589e-4579-97d9-c71fca41840d.png",
                        rating: 5.0,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Experience the bold flavors of Korea with our limited-time McAloo Tikki burger, boasting a signature Aloo patty, delicious Gochujang sauce, fresh lettuce + Beverage of your choice",
                        price: 159
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"McSaver Korean Mc Egg Burger",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/3/20/4617b70d-c983-422d-9950-2e79e6cd93dc_03c3c584-589e-4579-97d9-c71fca41840d.png",
                        rating: 4.0,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Egg-cellent news! Our Korean McEgg is here, packed with a steamed egg patty, delicious Gochujang sauce, and crunchy lettuce with beverage of your choice",
                        price: 189
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"McSpicy Paneer Burger with Multi-Millet Bun",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/9/18/70eb5956-3666-47f4-bcf8-1f5075207222_fd9e2a06-3f27-47e3-88aa-86895ffaa65e.png",
                        rating: 4.2,
                        ingredients: "Lettuce, Tomato, Onion, Pickles, Cheese, Ketchup, Mustard",
                        description: "Spice up your meal with a healthier bite! Try your McSpicy Paneer Burger with the nutritious multi-millet bun.",
                        price: 229
                    ),
            ]
        ),
        
        
        
        ModelRestaurant(
            name: "Pizza Hut",
            imageName: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2025/6/9/f4a5eee6-19ff-4b54-8554-24720103e18a_9864.JPG",
            rating: 4.1,
            deliveryTime: "40-51 mins",
            cuisine: "Pizza, Margherita, Veggie Feast, Tandoori Paneer",
            location: "Kandivali",
            deal: "AT ₹99",
            menuItem: [
                ModelRestaurant.ModelMenuItem(
                        name:"Margherita.",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/ef2f1053-c8e3-4072-aaa7-4539a67c8554_e8da5065-4d03-47d7-bad7-5413398a1564.jpg_compressed",
                        rating: 4.1,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Pizza topped with our herb-infused signature pan sauce and 100% mozzarella cheese. A classic treat for all cheese lovers out there! (PAN Per/Med-292 Kcal/100g | TnC-293 Kcal/100g | Stuffed Crust Add : Per: 227 Kcal/100g | Med: 216 Kcal/100g) Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 169
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Tandoori Paneer",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/92cfd7cf-0504-4444-befc-ff4aee0486cd_bac2d634-a13d-4cc3-828e-b2ad12dc73c0.jpg_compressed",
                        rating: 3.8,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 1 | It's our signature. Spiced paneer, crunchy onions & green capsicum, spicy red paprika with delicious tandoori sauce and 100% mozzarella cheese! (PAN Per/Med-335 Kcal/100g | TnC-326 Kcal/100g | Stuffed Crust Add : Per: 227 Kcal/100g | Med: 216 Kcal/100g) Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 99
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Hut Treat Meal for 2 - Veg.",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/589df6c9-9d24-4cdb-a1c9-1559b1ea0225_80739de1-5149-41de-9d4a-36744ba3257f.jpg_compressed",
                        rating: 5.0,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 2 | 1 medium veg pizza upto signature, 1 classic bread stix, 1 Pepsi PET",
                        price: 159
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Murg Malai Chicken",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/a17de87b-9413-49b6-9982-42a676e8cbab_6e749005-f69b-4754-a229-18681a4f03c8.jpg_compressed",
                        rating: 4.0,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 1 | Amazingly flavourful chicken malai tikka, herbed onion & green capsicum, spicy red paprika with flavourful pan sauce and 100% mozzarella cheese (PAN Per/Med-269 Kcal/100g | TnC-299 Kcal/100g | Stuffed Crust Add : Per: 227 Kcal/100g | Med: 216 Kcal/100g | Stuff Crust Chicken Seekh Kebab Add : Per: 256 Kcal/100g | Med: 253 Kcal/100g) Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 189
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Mexican Fiesta Thin n Crispy",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/16/47cf0437-dc2a-4bba-b7a9-09f0f6c322ae_657285bf-85e6-43cf-95a8-07344004a047.jpg_compressed",
                        rating: 4.2,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 4 | New Thin n Crispy crust topped with red capsicum, green capsicum, jalapeno, onion, black olives, sweet corn, 100% mozzarella cheese, signature spice sprinkle & our flavourful pan sauce (TnC-258 Kcal/100g). Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 229
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Margherita.",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/ef2f1053-c8e3-4072-aaa7-4539a67c8554_e8da5065-4d03-47d7-bad7-5413398a1564.jpg_compressed",
                        rating: 4.1,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Pizza topped with our herb-infused signature pan sauce and 100% mozzarella cheese. A classic treat for all cheese lovers out there! (PAN Per/Med-292 Kcal/100g | TnC-293 Kcal/100g | Stuffed Crust Add : Per: 227 Kcal/100g | Med: 216 Kcal/100g) Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 169
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Tandoori Paneer",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/92cfd7cf-0504-4444-befc-ff4aee0486cd_bac2d634-a13d-4cc3-828e-b2ad12dc73c0.jpg_compressed",
                        rating: 3.8,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 1 | It's our signature. Spiced paneer, crunchy onions & green capsicum, spicy red paprika with delicious tandoori sauce and 100% mozzarella cheese! (PAN Per/Med-335 Kcal/100g | TnC-326 Kcal/100g | Stuffed Crust Add : Per: 227 Kcal/100g | Med: 216 Kcal/100g) Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 99
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Hut Treat Meal for 2 - Veg.",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/589df6c9-9d24-4cdb-a1c9-1559b1ea0225_80739de1-5149-41de-9d4a-36744ba3257f.jpg_compressed",
                        rating: 5.0,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 2 | 1 medium veg pizza upto signature, 1 classic bread stix, 1 Pepsi PET",
                        price: 159
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Murg Malai Chicken",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/17/a17de87b-9413-49b6-9982-42a676e8cbab_6e749005-f69b-4754-a229-18681a4f03c8.jpg_compressed",
                        rating: 4.0,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 1 | Amazingly flavourful chicken malai tikka, herbed onion & green capsicum, spicy red paprika with flavourful pan sauce and 100% mozzarella cheese (PAN Per/Med-269 Kcal/100g | TnC-299 Kcal/100g | Stuffed Crust Add : Per: 227 Kcal/100g | Med: 216 Kcal/100g | Stuff Crust Chicken Seekh Kebab Add : Per: 256 Kcal/100g | Med: 253 Kcal/100g) Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 189
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Mexican Fiesta Thin n Crispy",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/16/47cf0437-dc2a-4bba-b7a9-09f0f6c322ae_657285bf-85e6-43cf-95a8-07344004a047.jpg_compressed",
                        rating: 4.2,
                        ingredients: "flour, water, yeast, and salt, with optional additions like olive oil and sugar.",
                        description: "Serves 4 | New Thin n Crispy crust topped with red capsicum, green capsicum, jalapeno, onion, black olives, sweet corn, 100% mozzarella cheese, signature spice sprinkle & our flavourful pan sauce (TnC-258 Kcal/100g). Contains Cereals containing Gluten (Wheat), Soya and Milk & Milk Products.",
                        price: 229
                    ),
            ]
        ),
        
        
        ModelRestaurant(
            name: "Persian Darbar",
            imageName: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/7aeb2bbff29d99d6e986240911ce0e71",
            rating: 4.1,
            deliveryTime: "40-51 mins",
            cuisine: "Hyderabadi, Lucknowi (Awadhi), Kolkata, and Malabar (Thalassery) biryanis",
            location: "Kandivali",
            deal: "65% OFF",
            menuItem: [
                ModelRestaurant.ModelMenuItem(
                        name:"Chicken Tandoori",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/a1d4490dc5eeae91314d782fac85b379",
                        rating: 4.1,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "Juicy chicken marinated in yogurt and spices, grilled in a tandoor, offering a smoky and aromatic flavor.",
                        price: 469
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Chicken Banjara Tikka Kebab (6 Pieces)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/976d365d7a2f91f83f5ed72124e2f41c",
                        rating: 3.8,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "Spicy and tangy chicken tikka marinated in traditional Banjara spices, offering a bold and rustic flavor.",
                        price: 445
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Chicken Fried Rice (500 Ml)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/25/e010650a-014a-4f7e-893d-13540636b254_4729e06b-62df-48dc-86a3-9271e7ff00da.jpeg",
                        rating: 5.0,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "A flavorful chicken fried rice, made with basmati rice, tender chicken pieces, and vegetables, served in 500ml, offering a simple yet satisfying meal.",
                        price: 260
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Paneer Tikka Biryani (3 Pieces)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/23/213db5c5-6815-4212-a3a9-381a0f0cee36_fa63c675-fdda-4523-a098-5db6876fa6d8.jpeg",
                        rating: 4.0,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "[3 Pieces] Layers of spiced basmati rice and marinated paneer tikka, infused with saffron and fried onions for a royal vegetarian treat.",
                        price: 314
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Egg Biryani (500ml)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/25/42b09fbd-71d8-46fb-9f67-f658c3684148_be79d48c-adb4-4864-9133-954e49cafe3f.jpeg",
                        rating: 4.2,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "[1 egg] A rich and flavorful egg biryani, made with basmati rice, boiled eggs, and aromatic spices, served in 500ml, offering a hearty and satisfying vegetarian meal.",
                        price: 188
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Chicken Tandoori",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/a1d4490dc5eeae91314d782fac85b379",
                        rating: 4.1,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "Juicy chicken marinated in yogurt and spices, grilled in a tandoor, offering a smoky and aromatic flavor.",
                        price: 469
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Chicken Banjara Tikka Kebab (6 Pieces)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/976d365d7a2f91f83f5ed72124e2f41c",
                        rating: 3.8,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "Spicy and tangy chicken tikka marinated in traditional Banjara spices, offering a bold and rustic flavor.",
                        price: 445
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Chicken Fried Rice (500 Ml)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/25/e010650a-014a-4f7e-893d-13540636b254_4729e06b-62df-48dc-86a3-9271e7ff00da.jpeg",
                        rating: 5.0,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "A flavorful chicken fried rice, made with basmati rice, tender chicken pieces, and vegetables, served in 500ml, offering a simple yet satisfying meal.",
                        price: 260
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Paneer Tikka Biryani (3 Pieces)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2025/4/23/213db5c5-6815-4212-a3a9-381a0f0cee36_fa63c675-fdda-4523-a098-5db6876fa6d8.jpeg",
                        rating: 4.0,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "[3 Pieces] Layers of spiced basmati rice and marinated paneer tikka, infused with saffron and fried onions for a royal vegetarian treat.",
                        price: 314
                    ),
                
                ModelRestaurant.ModelMenuItem(
                        name:"Egg Biryani (500ml)",
                        imageName:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/FOOD_CATALOG/IMAGES/CMS/2024/12/25/42b09fbd-71d8-46fb-9f67-f658c3684148_be79d48c-adb4-4864-9133-954e49cafe3f.jpeg",
                        rating: 4.2,
                        ingredients: "basmati rice, chicken or mutton (or vegetables), yogurt, onions, ginger-garlic paste, and various spices like turmeric, chili powder, and garam masala",
                        description: "[1 egg] A rich and flavorful egg biryani, made with basmati rice, boiled eggs, and aromatic spices, served in 500ml, offering a hearty and satisfying vegetarian meal.",
                        price: 188
                    ),
            ]
        )
        
        
    ]
}
