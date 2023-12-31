// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCNz6F4zqMmMWZ0Xw1zVjKSBr4X1Iw94DI',
    appId: '1:565279965274:web:e1e3d179ca5d0be3df5863',
    messagingSenderId: '565279965274',
    projectId: 'nikahyuk-7a85c',
    authDomain: 'nikahyuk-7a85c.firebaseapp.com',
    storageBucket: 'nikahyuk-7a85c.appspot.com',
    measurementId: 'G-DVEWX0Y6K9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcJRfqyxle42btparZiEM9SejFTVo_wog',
    appId: '1:565279965274:android:01685cee76548f18df5863',
    messagingSenderId: '565279965274',
    projectId: 'nikahyuk-7a85c',
    storageBucket: 'nikahyuk-7a85c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCp8cGCUxNIOsgUmzOVk0bMAHIM3DV9C28',
    appId: '1:565279965274:ios:22e56e93e42c1818df5863',
    messagingSenderId: '565279965274',
    projectId: 'nikahyuk-7a85c',
    storageBucket: 'nikahyuk-7a85c.appspot.com',
    iosClientId:
        '565279965274-3toe7a1bug3afu8puod2670jj2t6k64h.apps.googleusercontent.com',
    iosBundleId: 'com.example.nikahyuk',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCp8cGCUxNIOsgUmzOVk0bMAHIM3DV9C28',
    appId: '1:565279965274:ios:22e56e93e42c1818df5863',
    messagingSenderId: '565279965274',
    projectId: 'nikahyuk-7a85c',
    storageBucket: 'nikahyuk-7a85c.appspot.com',
    iosClientId:
        '565279965274-3toe7a1bug3afu8puod2670jj2t6k64h.apps.googleusercontent.com',
    iosBundleId: 'com.example.nikahyuk',
  );
}
