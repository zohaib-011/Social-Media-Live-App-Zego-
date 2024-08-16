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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC_AdtAcV1y6sm7ro7stA48vU710zwZ9RA',
    appId: '1:766668587809:web:da70e40ea55218b386f460',
    messagingSenderId: '766668587809',
    projectId: 'social-meddia-live-streaming',
    authDomain: 'social-meddia-live-streaming.firebaseapp.com',
    storageBucket: 'social-meddia-live-streaming.appspot.com',
    measurementId: 'G-4QTBDVGK2H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYX01M9iB-nOxBsa0gYieXCRuCsRLHR0k',
    appId: '1:766668587809:android:15aa04ce0087038286f460',
    messagingSenderId: '766668587809',
    projectId: 'social-meddia-live-streaming',
    storageBucket: 'social-meddia-live-streaming.appspot.com',
  );
}
