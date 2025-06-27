# 🍽️ Zwigato, A Food Ordering App – SwiftUI

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



Created with ❤️ using SwiftUI.
