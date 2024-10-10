// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCM-O9ND-WjlZ8no5wFfut8P3Ynj72rfrE',
    appId: '1:206452831834:web:ef41d5916fa50780b9ca63',
    messagingSenderId: '206452831834',
    projectId: 'travel-app-7a8cd',
    authDomain: 'travel-app-7a8cd.firebaseapp.com',
    storageBucket: 'travel-app-7a8cd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUTQaegy4SRnOGIS2Yv3yuMeMZd2f2qcw',
    appId: '1:206452831834:android:3ea5e5a93a9362c6b9ca63',
    messagingSenderId: '206452831834',
    projectId: 'travel-app-7a8cd',
    storageBucket: 'travel-app-7a8cd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA81x25hTs2rhutCQnAHXteeVblC8foujc',
    appId: '1:206452831834:ios:2857a22758621e78b9ca63',
    messagingSenderId: '206452831834',
    projectId: 'travel-app-7a8cd',
    storageBucket: 'travel-app-7a8cd.appspot.com',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA81x25hTs2rhutCQnAHXteeVblC8foujc',
    appId: '1:206452831834:ios:2857a22758621e78b9ca63',
    messagingSenderId: '206452831834',
    projectId: 'travel-app-7a8cd',
    storageBucket: 'travel-app-7a8cd.appspot.com',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCM-O9ND-WjlZ8no5wFfut8P3Ynj72rfrE',
    appId: '1:206452831834:web:fc24f1637914622cb9ca63',
    messagingSenderId: '206452831834',
    projectId: 'travel-app-7a8cd',
    authDomain: 'travel-app-7a8cd.firebaseapp.com',
    storageBucket: 'travel-app-7a8cd.appspot.com',
  );
}
