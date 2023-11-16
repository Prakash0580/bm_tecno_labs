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
    apiKey: 'AIzaSyAPinRrGq08Uxz1rp6LUX33f3PIf-uEYaQ',
    appId: '1:1089934354533:web:ebf8e7f9525e1198163e8c',
    messagingSenderId: '1089934354533',
    projectId: 'bmtecnolabs',
    authDomain: 'bmtecnolabs.firebaseapp.com',
    storageBucket: 'bmtecnolabs.appspot.com',
    measurementId: 'G-RT4QGSR3HR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxdOlC6FFVkyJ-yDe_g_0b6jh2dmfPDEE',
    appId: '1:1089934354533:android:b4ab82697a2d1b6f163e8c',
    messagingSenderId: '1089934354533',
    projectId: 'bmtecnolabs',
    storageBucket: 'bmtecnolabs.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIn41fyJXAHHwJTZwyCqRG0wgbedS_CYU',
    appId: '1:1089934354533:ios:87cfaac226c0aa1c163e8c',
    messagingSenderId: '1089934354533',
    projectId: 'bmtecnolabs',
    storageBucket: 'bmtecnolabs.appspot.com',
    iosBundleId: 'com.example.bmTecnoLab',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDIn41fyJXAHHwJTZwyCqRG0wgbedS_CYU',
    appId: '1:1089934354533:ios:33b1cc2610687318163e8c',
    messagingSenderId: '1089934354533',
    projectId: 'bmtecnolabs',
    storageBucket: 'bmtecnolabs.appspot.com',
    iosBundleId: 'com.example.bmTecnoLab.RunnerTests',
  );
}
