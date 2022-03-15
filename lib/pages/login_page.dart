import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>   {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("LoginPage")),
        body: Column(
          children: [
            const Center(
              child: Text('LoginPage'),
            ),
            ElevatedButton(
              onPressed: ()  => context.go('/rootPage'),
              child: const Text("Login"),
            )
          ],
        )
    );
  }
}