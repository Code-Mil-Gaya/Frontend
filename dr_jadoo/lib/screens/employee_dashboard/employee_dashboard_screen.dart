import 'package:dr_jadoo/model/User/current_user.dart';
import 'package:dr_jadoo/services/employee_dashboard_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmployeeDashboardScreen extends StatefulWidget {
  const EmployeeDashboardScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeDashboardScreen> createState() =>
      _EmployeeDashboardScreenState();
}

class _EmployeeDashboardScreenState extends State<EmployeeDashboardScreen> {
  late CurrentUser currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initstate();
  }

  void initstate() async {
    currentUser = await EmployeeDashboardSerivce.instance.getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
