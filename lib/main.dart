import 'package:flutter/material.dart';
import 'package:chat/screens/welcome_screen.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/registration_screen.dart';
import 'package:chat/screens/chat_screen.dart';
import "package:firebase_core/firebase_core.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCbpUuPWj5pYzYYQxnGqL62S7kzawMYX44",
        appId: "1:120861215674:android:16904d1cd8da4d49e82b83",
        messagingSenderId: "120861215674",
        projectId: "flash-chat-f3f9a"),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: "welcome_screen",
      routes: {
        "welcome_screen": (context) => WelcomeScreen(),
        "login_screen": (context) => LoginScreen(),
        "registration_screen": (context) => RegistrationScreen(),
        "chat_screen": (context) => ChatScreen(),
      },
    );
  }
}
