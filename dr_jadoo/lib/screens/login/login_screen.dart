import 'package:auto_route/auto_route.dart';
import 'package:dr_jadoo/routes/router.gr.dart';
import 'package:dr_jadoo/services/login_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () async {
            if (await LoginService.instance
                .logIn("kaushal.bhat@gonuclei.com", "nuclei123")) {
              AutoRouter.of(context).push(const EmployeeDashboardRoute());
            }
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
