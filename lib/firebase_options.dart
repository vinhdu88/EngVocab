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
    apiKey: 'AIzaSyDFyuzEf9eES9S4Uj3BuD7z_SPyq_EvgNM',
    appId: '1:481977763225:web:6630aa7380dbc4af55bf08',
    messagingSenderId: '481977763225',
    projectId: 'engvocab-9ad1b',
    authDomain: 'engvocab-9ad1b.firebaseapp.com',
    storageBucket: 'engvocab-9ad1b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1Q-pBB51QGMsI6QJ40pWTkFxyMBlqGgo',
    appId: '1:481977763225:android:4c529f4707988a8155bf08',
    messagingSenderId: '481977763225',
    projectId: 'engvocab-9ad1b',
    storageBucket: 'engvocab-9ad1b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4IypyIZjL_5dN9gBMDipOl8-YaSYFarY',
    appId: '1:481977763225:ios:b799ff8c072c4b8155bf08',
    messagingSenderId: '481977763225',
    projectId: 'engvocab-9ad1b',
    storageBucket: 'engvocab-9ad1b.appspot.com',
    iosBundleId: 'com.example.itproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4IypyIZjL_5dN9gBMDipOl8-YaSYFarY',
    appId: '1:481977763225:ios:0111015a0da41dc755bf08',
    messagingSenderId: '481977763225',
    projectId: 'engvocab-9ad1b',
    storageBucket: 'engvocab-9ad1b.appspot.com',
    iosBundleId: 'com.example.itproject.RunnerTests',
  );
}