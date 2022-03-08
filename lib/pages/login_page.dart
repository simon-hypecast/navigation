import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:navigation/pages/root_page.dart';
import 'package:navigation/routes/router.gr.dart';

class LoginPage extends StatefulWidget{
  LoginPage({Key? key}) : super(key: key);

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
              onPressed: () => context.router.replace(const RootPageRoute()),
              child: Text("Login"),
            )
          ],
        )
    );
  }
}