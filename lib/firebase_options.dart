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
    apiKey: 'AIzaSyDdU9ggJSXFSRH1zN2wsIRk7xrjPbslxiw',
    appId: '1:112507854697:web:2f28102f72f4c0869ca7f8',
    messagingSenderId: '112507854697',
    projectId: 'pokemonapp-4915e',
    authDomain: 'pokemonapp-4915e.firebaseapp.com',
    storageBucket: 'pokemonapp-4915e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbY2U3snRdj5dNu1ARS0QY8jtqwdT39AE',
    appId: '1:112507854697:android:a267df22ccdef5ad9ca7f8',
    messagingSenderId: '112507854697',
    projectId: 'pokemonapp-4915e',
    storageBucket: 'pokemonapp-4915e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyDHqN8biSK_OfSJ1y0mb_Fiurw1xaVbI',
    appId: '1:112507854697:ios:e4068186448dd4ab9ca7f8',
    messagingSenderId: '112507854697',
    projectId: 'pokemonapp-4915e',
    storageBucket: 'pokemonapp-4915e.appspot.com',
    iosClientId: '112507854697-utulaghvt3jdd7ei0kn8ff938h1nvdnu.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokemonApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyDHqN8biSK_OfSJ1y0mb_Fiurw1xaVbI',
    appId: '1:112507854697:ios:e4068186448dd4ab9ca7f8',
    messagingSenderId: '112507854697',
    projectId: 'pokemonapp-4915e',
    storageBucket: 'pokemonapp-4915e.appspot.com',
    iosClientId: '112507854697-utulaghvt3jdd7ei0kn8ff938h1nvdnu.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokemonApp',
  );
}
