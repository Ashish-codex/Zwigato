//
//  RestaurantMenuViewModel.swift
//  Zwigato
//
//  Created by Ashish Prajapati on 24/06/25.
//

import Foundation

class RestaurantMenuViewModel: ObservableObject{
    
    @Published var isPresentingDetailView: Bool = false
    @Published var onTapCellIndex: Int = 0
    
    var sampleFeaturedRestaurants = [
        
        ModelRestaurant(name: "BBC", imageName: "bbc", rating: 4.4, deliveryTime: "20-30 mins", cuisine: "Konkan, Chinese, Toandoor, Thai", deal: "₹50 OFF", location: "Borivali 7.3km", tagLine: "There's always a reason to celebrate", description: "Hands down the best biryani place in Mumbai! 🥰 I am a hardcore biryani lover and have had chicken biryani all over Mumbai but didn`t find any place serving such delicious biryani like BBC. Their kebabs are also very tasty and mouth watering.. totally worth the prices. And the ambience is also nice and calm. During weekends it`s a little crowded but I assure that the food is worth the wait 😋"),
        
        ModelRestaurant(name: "Domino's", imageName: "dominos", rating: 4.2, deliveryTime: "10-15 mins", cuisine: "Pizza, Italian, Pasta, Thai", deal: "AT ₹89", location: "Kandivali 1.3km", tagLine: "We'll deliver in 30 minutes or less, or it's free!", description: "Jubilant FoodWorks Limited (the Company) is a Jubilant Bhartia Group Company. The Company was incorporated in 1995 and initiated operations in 1996. The Company got listed on the Indian bourses in February 2010. Mr. Shyam S. Bhartia, Mr. Hari S. Bhartia and Jubilant Consumer Pvt. Ltd. (formerly Jubilant Fresh Pvt. Ltd.) are the Promoters of the Company. The Company & its subsidiary operates Domino's Pizza brand with the exclusive rights for India, Nepal, Bangladesh and Sri Lanka. The Company is market leader in the pizza segment with a network of 1,249 Domino’s Pizza restaurants across 276 cities in India (as on June 30, 2019)."),
        
        ModelRestaurant(name: "Joyces", imageName: "joyces", rating: 5.0, deliveryTime: "40-50 mins", cuisine: "Brave Heart, China Gate, Onion, Thai", deal: "50% OFF", location: "Malad 10.7km", tagLine: "Pizza! Pizza!", description: "Little Caesars introduced their famous slogan, “Pizza! Pizza!” in 1979, emphasizing the affordability and value of their pizza by offering two pizzas for the price of one. It became an enduring and widely recognized catchphrase."),
        
        ModelRestaurant(name: "McDonald's", imageName: "mcdonald", rating: 4.1, deliveryTime: "20-30 mins", cuisine: "Burgger, Cocoak Float, Pizza, Thai", deal: "₹100 OFF", location: "Dahisar 2.3km", tagLine: "I'm Lovin' It", description: "The McDonald's slogan introduced in 2003 is the current slogan of the brand. The company didn't make any further changes to its tagline, as it garnered immense popularity in the new millennium and continues to do so."),
        
        
        ModelRestaurant(name: "Subway", imageName: "subway", rating: 4.6, deliveryTime: "20-30 mins", cuisine: "Italian, Chinese, Mexican, Thai", deal: "₹125 OFF", location: "Kandivali 7.3km", tagLine: "Eat Fresh", description: "Subway updated its slogan in 2000 to align with the growing interest in quality ingredients and transparency, and to emphasize the brand's position as a healthy alternative to other fast food restaurants. The slogan resonated with health-conscious consumers, but over time, Subway faced competition from other restaurants offering a wider range of products."),
    ]
    
}
