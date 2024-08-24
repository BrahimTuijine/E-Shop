# E-Shop Project

This is a simple e-shop application built with Flutter and Firebase, providing basic e-commerce functionalities such as product browsing and authentication.

## Architecture

This project follows a **Clean Architecture** approach, which is organized into three main layers:

1. **Core**: Contains shared code and utilities used throughout the app, such as constants, network configurations, exceptions, and widgets.
    - **Bootstrap**: Handles app initialization.
    - **Environment**: Manages environment-specific configurations.
    - **Network**: Contains HTTP client setup and network-related utilities.
    - **Router**: Defines app routing and navigation.
    - **Widgets**: Custom reusable widgets used across different screens.

2. **Features**: Divided into two primary modules, **Authentication** and **Products**:
    - **Authentication**: Manages user sign-up, sign-in, and sign-out functionalities. It is further divided into data, domain, and presentation layers:
        - **Data**: Handles data sources and repositories for managing authentication.
        - **Domain**: Defines entities, repositories, and use cases for the authentication domain.
        - **Presentation**: Contains BLoCs, screens, and widgets for managing the user interface related to authentication.
    - **Products**: Manages product browsing and shopping cart functionalities:
        - **Data**: Contains data sources and repositories for handling product-related data.
        - **Domain**: Defines entities, repositories, and use cases for the product domain.
        - **Presentation**: Contains BLoCs, screens, and widgets for the product browsing and shopping cart user interface.
        
3. **Firebase**: Integrated with Firebase for authentication and backend services. The `firebase_options.dart` file handles Firebase configuration.

## Packages

This project utilizes the following key packages:

- **firebase_core**: Core Firebase functionalities.
- **firebase_auth**: Firebase Authentication for user sign-in, sign-up, and sign-out.
- **flutter_bloc**: State management using the BLoC pattern.
- **get_it**: Dependency injection for managing object creation and lifecycle.
- **hive**: Local storage for caching data.
- **go_router**: For handling navigation and routing.

## Usage

### Prerequisites

Ensure that you have the following installed:

- Flutter SDK
- Dart SDK
- Firebase CLI (for Firebase setup)

### Running the App

1. **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Install dependencies**:    
    ```bash
    flutter pub get
    ```

3. **Set up Firebase**: (optional)
    - Create a Firebase project in the Firebase console.
    - Add your Android/iOS app to the Firebase project.

4. **Run the app**:    
    ```bash
    flutter run
    ```