# Budget App 💰

The **Budget App** is a premium, high-performance Flutter-based application designed to help users manage their personal finances effectively. It provides an intuitive interface to log transactions, track income and expenses, set categories, search through history, and secure all personal financial data locally.

---

## 🚀 Features

- **Double-Layer Local Authentication:**
  - **One-time Setup:** Prompts the user to set up a Name and Password on first launch.
  - **Verification Lock:** Secures the app with a password screen on every subsequent open.
  - **Change Password Option:** Allows updating credentials securely by verifying the old password.
- **Transaction Management:** Easily add, edit, and delete income or expense records.
- **Smart Category Filtering:** Filter transactions instantly using responsive interactive category buttons (Food, Salary, etc.).
- **Live Search History:** Search through previous transaction notes in real-time.
- **Accurate Financial Calculations:** Automatic sum calculations of total income, expenses, and final net balance.
- **SQLite Database Support:** Saves all records locally using SQLite (`sqflite`), keeping financial history completely private.

---

## 🛠️ Technologies Used

- **Framework:** Flutter
- **Language:** Dart
- **State Management:** GetX
- **Database:** SQLite (`sqflite`)
- **Typography:** Google Fonts (Poppins)

---

## 📂 Folder Structure

The project follows a modular, clean architectures pattern:

```plaintext
lib/
├── main.dart                          # App initialization & GetX routes configuration
├── controller/                        # State controllers (GetxController)
│   ├── all_categories_controller.dart
│   ├── auth_controller.dart
│   ├── home_controller.dart
│   ├── user_input_controller.dart
│   └── db_helper/                     # Local SQLite DB helper layer
│       ├── db_helper.dart             # Main ledger table creator
│       └── user_db_helper.dart        # User profile database table helper
├── model/                             # Data schemas
│   ├── budget_model.dart              # Income and expense model
│   └── user_model.dart                # Profile model
└── screens/                           # Screen UI structures
    ├── auth/                          # One-time signup & verification login pages
    ├── bottom_navigation_bar/         # Base layout structure
    ├── flash_screen/                  # App launch splash routing manager
    ├── home/                          # Home overview dashboards & category filter lists
    ├── search_page/                   # Real-time note search page
    └── user_input/                    # Income and expense tab logs editor
```

---

## 💻 Getting Started

### Prerequisites
- Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Set up an emulator/simulator or connect a physical debugging device

### Steps to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/deeppatel2610/budget_app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd budget_app
   ```
3. Fetch the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

---

## 📱 Screenshots & Demo

<div align="center">
  <img src="https://github.com/user-attachments/assets/14ec6303-6497-410b-8e26-8b3ae9eefd25" height="500px" style="margin: 5px;">
  <img src="https://github.com/user-attachments/assets/87ad40dc-7387-47ae-b4a3-c1663f581f73" height="500px" style="margin: 5px;"> 
  <img src="https://github.com/user-attachments/assets/ff9758f8-5fa9-4d29-b9fd-d4bbdcd1402f" height="500px" style="margin: 5px;">
  <img src="https://github.com/user-attachments/assets/f473014b-fb6a-4aff-adb9-d10cccc4f9a9" height="500px" style="margin: 5px;"> 
  <img src="https://github.com/user-attachments/assets/28e00557-bb07-4b95-95da-5b0d0c965638" height="500px" style="margin: 5px;"> 
  <img src="https://github.com/user-attachments/assets/f04985ad-f9fe-46f6-a308-55af694a0509" height="500px" style="margin: 5px;">
  <img src="https://github.com/user-attachments/assets/5830dad7-6b16-4f67-abb9-21bec3c5969a" height="500px" style="margin: 5px;"> 
</div>

### Walkthrough Videos:

- **App Demo 1:** https://github.com/user-attachments/assets/f42534b4-7dd7-485c-8cc5-ea2482e19207
- **App Demo 2:** https://github.com/user-attachments/assets/9da6a417-e7c0-470a-b452-11fb021adf98

---

## 📬 Contact

- **GitHub:** [@deeppatel2610](https://github.com/deeppatel2610)
- **Email:** [deeppatel100267@gmail.com](mailto:deeppatel100267@gmail.com)

---

⭐ If you like this project, don't forget to give it a star!
