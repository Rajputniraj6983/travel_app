<h2 align = "center">   @ @ Travel App @ @ </h2>

# ** Travel  App Documentation **

 **Description**  
   - A cross-platform Travel application built with Flutter, using Firebase as the backend. This app enables users to book a trip, chat upadte in real time date.

   **Objectives**  
   - Develop an interactive travel application .
   - Provide secure login, real-time updates, and user trip booking.

<br>
<h2>📃 PPT </h2>

(https://github.com/user-attachments/files/17686890/Travel-App-Your-Gateway-to-Unforgettable-Journeys.1.pdf)
<br>

##  Project Structure**

   ```
   lib/
   ├── main.dart                  # Entry point of the app
   ├── screens/                   # Directory for all app screens
   │   ├── login_screen.dart      # User login and signup screen
   │   ├── home_screen.dart       # Main dashboard after login
   │   ├── SchedulePage           # User trip save 
   │   └── ChatScreen             # User chat to friend to each other
   │   └── ProfileScreen          # User chnages profile addres and log-out
   │   └── BookmarkScreen         # User save our trip
   ├── models/                    # Data models for quiz questions and user scores
   │   ├── chat modal
   │   └── place modal
   │   └── user modal
   ├── services/                        # Firebase and API services
   │   ├── Auth_services.dart           # Manages user login/logout
   │   ├── Firebase_service.dart        # Database interactions
   │   └── chat_services.dart           # User chat upadte screen and real time data show
   │   └── notification_services.dart   # Current notification update
   │   └── cloud_firestore.dart         # user name and phone number and user chat data store in firebase cloud store
   └── controllers/               # GetX controllers for state management
       ├── auth_controller.dart
       ├── cart_controller.dart
       └── chat_notification_controller.
       └── Google_controller.dart
       └── Favourite_icon_controller.dart
   ```
##  Firebase Setup**

   **Steps to Configure Firebase**  
   1. **Firebase Project Creation**: Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
   2. **Add Firebase to Flutter**: Follow Firebase's setup guide to connect Firebase to the Flutter app.
   3. **Authentication Setup**: Enable Email/Password login under Authentication settings.
   4. **Database Setup**:  
      - Use Firebase Realtime Database.
   
 
 ## Dependency ##
    ├── cupertino_icons: ^1.0.8
    ├── get: ^4.6.6
    ├── firebase_core: ^3.6.0
    ├── firebase_auth: any
    ├── google_sign_in: ^6.2.1
    ├── sign_in_button: ^3.2.0
    ├── cloud_firestore: ^5.4.4
    ├── firebase_messaging: any
    ├── flutter_local_notifications: any
    ├── google_fonts: ^6.2.1
    ├── shared_preferences: any
    

### Screenshorts
<p align ='center'>
  <img src='https://github.com/user-attachments/assets/698ccbb8-0921-4ce2-bc06-6a2ac3f8deeb' width=300>
  <img src='https://github.com/user-attachments/assets/0720d6f3-13c6-4443-a931-3d3c9dadea54' width=300> 
  <img src='https://github.com/user-attachments/assets/12462c23-0d7c-4b68-a648-9966761f9033' width=300> 
  <img src='https://github.com/user-attachments/assets/12462c23-0d7c-4b68-a648-9966761f9033' width=300> 
  <img src='https://github.com/user-attachments/assets/d74525a7-f847-454c-913f-88f0a6889b24' width=300> 
  <img src='https://github.com/user-attachments/assets/41514aab-e434-4ab8-b1c5-4a26a2e7df54' width=300> 
  <img src='https://github.com/user-attachments/assets/03544f89-454b-45f5-a786-b4c38b134918' width=300> 
  <img src='https://github.com/user-attachments/assets/ee961b43-e00e-43dd-aae5-02cf1e440a0a' width=300> 
  <img src='https://github.com/user-attachments/assets/498db956-2031-470f-a119-bf0e081c2490' width=300> 
  <img src='https://github.com/user-attachments/assets/e68adeec-f5b0-4134-b5b4-495cb7373e45' width=300>
  <img src='https://github.com/user-attachments/assets/56906642-657f-415a-a49a-915405243bd8' width=300>
</p>

app video : [video]()

### Mobile video









