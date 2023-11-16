
import 'package:bm_tecno_lab/customer/screens/home_screen.dart';
import 'package:bm_tecno_lab/firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BmTechnolabs',
      theme: ThemeData(fontFamily: 'CrimsonText'),
      // key: navigatorKey,
      debugShowCheckedModeBanner: false,
      home:  const HomeScreen(),
    );
  }
}

// // Admin Sections

// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   //  Firebase SetUp
//   await Firebase.initializeApp(); // initialze the firebase
//   await FirebaseApi().requestPermisionFun(); // taking permission to user
//   await FirebaseApi().getToken();
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BmTechnolabs',
//       theme: ThemeData(
//         fontFamily: 'CrimsonText',
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       // key: navigatorKey,
//       debugShowCheckedModeBanner: false,
//       home: const SplashScreen(),
//     );
//   }
// }
