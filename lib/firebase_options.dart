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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDaEEW6wepCbMECcbzkCamXtwtiWwD7zgA',
    appId: '1:715399999226:web:93dc71e7ed4bf33b05e343',
    messagingSenderId: '715399999226',
    projectId: 'bank-c4ce9',
    authDomain: 'bank-c4ce9.firebaseapp.com',
    storageBucket: 'bank-c4ce9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXDTwjBXcof7HS-qK3YhHmbi93K_VLfkA',
    appId: '1:715399999226:android:3a1f7dd0b4ee02ac05e343',
    messagingSenderId: '715399999226',
    projectId: 'bank-c4ce9',
    storageBucket: 'bank-c4ce9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_JoPndcJIMATNFnOOcfIe9Rw2OLwcBJg',
    appId: '1:715399999226:ios:27455f55e2b3c92805e343',
    messagingSenderId: '715399999226',
    projectId: 'bank-c4ce9',
    storageBucket: 'bank-c4ce9.appspot.com',
    iosClientId: '715399999226-vdh524fsd1kb09uvt3sag0fdev2b0bdr.apps.googleusercontent.com',
    iosBundleId: 'com.example.bankApp',
  );
}