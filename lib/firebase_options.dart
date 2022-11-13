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
    apiKey: 'AIzaSyCJR70jxA4yQ8d1auiIMTsaxzJb7lThYPQ',
    appId: '1:1091270114092:web:81615cf506acc3d8060a89',
    messagingSenderId: '1091270114092',
    projectId: 'ficmobilenew',
    authDomain: 'ficmobilenew.firebaseapp.com',
    storageBucket: 'ficmobilenew.appspot.com',
    measurementId: 'G-6ZGG84R3XF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuFuNXJLomSw5ksYBfo-Gi6-XWtksaOqg',
    appId: '1:1091270114092:android:80f4a1d72ddde9b0060a89',
    messagingSenderId: '1091270114092',
    projectId: 'ficmobilenew',
    storageBucket: 'ficmobilenew.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnL6I4eegL36azw4U7IU2tvzvUuv_B-XQ',
    appId: '1:1091270114092:ios:f65ba3adc02225d2060a89',
    messagingSenderId: '1091270114092',
    projectId: 'ficmobilenew',
    storageBucket: 'ficmobilenew.appspot.com',
    iosClientId: '1091270114092-c4sa82tr6v1bseqvl6drab4pckq2mast.apps.googleusercontent.com',
    iosBundleId: 'com.example.blankFireSetstate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnL6I4eegL36azw4U7IU2tvzvUuv_B-XQ',
    appId: '1:1091270114092:ios:f65ba3adc02225d2060a89',
    messagingSenderId: '1091270114092',
    projectId: 'ficmobilenew',
    storageBucket: 'ficmobilenew.appspot.com',
    iosClientId: '1091270114092-c4sa82tr6v1bseqvl6drab4pckq2mast.apps.googleusercontent.com',
    iosBundleId: 'com.example.blankFireSetstate',
  );
}
