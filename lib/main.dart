import 'package:flutter/material.dart';
import 'package:scholar_chat/pages/login_page.dart';
import 'package:scholar_chat/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}
