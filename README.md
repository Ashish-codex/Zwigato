# 🍽️ Zwigato, A Dummy Food Ordering App – SwiftUI

This is a simple, mocked with static data end-to-end food ordering app built using **SwiftUI**. It includes core features such as restaurant listing, menu selection, cart management, checkout flow.

---

## 📱 Screens

- **Home Screen** – List of restaurants with search functionality.
- **Restaurant Menu** – Display food items with option to add to cart.
- **Cart Screen** – View items in cart, update quantities, and proceed to checkout.
- **Checkout Screen** – Fill in delivery details and place the order.

---

## 🏗️ Architecture
The app uses MVVM (Model-View-ViewModel) architecture for a clean separation of concerns.

| Layer         | Description                                                                           |
| ------------- | ------------------------------------------------------------------------------------- |
| **Model**     | `ModelRestaurant`, `ModelUser` – plain Swift structs                            |
| **ViewModel** | Handles business logic and state updates (e.g., `RestaurantMenuViewModel`,`HomeScreenViewModel`, |
| **View**      | SwiftUI views like `HomeView`, `MenuScreen`, `CartScreen`, `CheckoutScreen`           |



## 🚀 How to Build & Run

1. Clone the repository:

   ```bash
   git clone https://github.com/Ashish-codex/Zwigato


## 📱 Screens

<img width="1000" height="800" alt="Shot" src="https://github.com/user-attachments/assets/34cfc55f-bc14-46f5-9b6a-89d3978f1ecc" />


Created with ❤️ using SwiftUI.
