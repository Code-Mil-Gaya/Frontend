import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common-widgets/appbar.dart';

class EmployeeDashboardScreen extends StatefulWidget {
  const EmployeeDashboardScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeDashboardScreen> createState() =>
      _EmployeeDashboardScreenState();
}

class _EmployeeDashboardScreenState extends State<EmployeeDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Appbar(),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height - 65,
                color: Colors.black,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        children: const [
                          Text(
                            'Design Team',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Product Designer',
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueAccent),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: const [
                  Center(
                    child: Text('Dashboard'),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
