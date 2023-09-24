import 'package:flutter/material.dart';

// importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// pages
import 'package:flutter_firebase/pages/add_name_page.dart';
import 'package:flutter_firebase/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/add': (context) => const AddNamePage(),
      },
    );
  }
}
