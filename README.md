# E-Library Platform (Smart Library)

## Overview

A cross-platform mobile library management application built for Skyline
University College, digitizing physical resource access into a real-time
mobile platform. Covers student authentication, semester-filtered textbook
access, facility reservations with push notifications, general book browsing
with in-app PDF viewing, and reserved book tracking.

## My Contribution

Solely responsible for the entire practical implementation - frontend UI and
Firebase data-binding logic. The team provided the theoretical framework and
UML diagrams; I translated those into a fully functional APK.

- **Firebase Authentication:** Built `Login.dart` using
  `FirebaseAuth.instance.signInWithEmailAndPassword()` with a
  `CupertinoAlertDialog` error handler covering `EMAIL_NOT_FOUND`,
  `EMAIL_EXISTS`, and `INVALID_PASSWORD` error codes. Includes Remember Me
  checkbox state management and obscured password field.

- **Real-Time Facility Reservation Engine:** Built `TableReservation.dart`
  with a 2-tab `DefaultTabController` (Reading Room - 8 tables, Discussion
  Room - 6 tables). Each table button triggers a sequential `showDatePicker`
  then `showTimePicker` dialog via the `intl` package, followed by
  `FlutterLocalNotificationsPlugin.show()` delivering a push notification
  confirming the booking with date and time. A Cancel Reservation button
  calls `flutterLocalNotificationsPlugin.cancelAll()`. Built
  `ComputerReservation.dart` using the same pattern for computer lab booking.

- **Dynamic Curriculum Filtering:** Built `CurrentCourses.dart` displaying
  only semester-relevant textbooks (Enterprise Computing, Security) as
  navigable image tiles, filtering the full book catalog to the student's
  enrolled IT courses.

- **General Books Browser:** Built `GeneralBooks.dart` with a 4-tab
  `DefaultTabController` and a `showSearch` delegate for real-time book
  search across 14 titles spanning IT, Business, and Fiction categories.

- **In-App PDF Viewer:** Integrated PDF reading for 9 digital textbooks
  stored in the `pdf/` folder, accessible without leaving the platform.

- **Reserved Books Tracking:** Built `ReservedBooks.dart` as a dedicated
  user profile section showing real-time reservation status across all
  borrowed titles.

## App Structure

```
lib/
├── main.dart                    # App entry, Firebase init, status bar config
├── Login.dart                   # Firebase Auth login screen
├── Home.dart                    # Home navigation hub
├── CurrentCourses.dart          # Semester-filtered textbook access
├── GeneralBooks.dart            # 4-tab book browser with search
├── ReservedBooks.dart           # Reserved books user profile section
├── TableReservation.dart        # Study table booking with notifications
├── ComputerReservation.dart     # Computer lab booking with notifications
├── Books/                       # 14 individual book detail screens
│   ├── AuditControl.dart
│   ├── BusinessBook.dart
│   ├── BusinessStrategy.dart
│   ├── Enterprise.dart
│   ├── Harry.dart
│   ├── ITEssential.dart
│   ├── ITManagement.dart
│   ├── KiteRunner.dart
│   ├── Lies.dart
│   ├── Midnight.dart
│   ├── Security.dart
│   ├── StartingBusiness.dart
│   ├── TechHandBook.dart
│   └── Traction.dart
└── Books Reserved/              # 24 reservation flow screens per book
images/                          # App image assets (27 files)
pdf/                             # 9 digital textbook PDFs
android/                         # Android build configuration
ios/                             # iOS build configuration
pubspec.yaml                     # Flutter dependencies
pubspec.lock                     # Locked dependency versions
analysis_options.yaml            # Dart analysis config
README.md
```

## Technical Stack

- **Framework:** Flutter (Dart)
- **Backend:** Firebase Authentication, Firebase Realtime Database,
  Firebase Storage
- **Notifications:** flutter_local_notifications
- **Utilities:** intl (date/time formatting), firebase_core

## License
MIT License

## Author

**Mohammad Hamza Piracha** |
Data Scientist & Applied AI Engineer |
[LinkedIn](https://www.linkedin.com/in/hamza-piracha) | hamzapiracha@live.com
