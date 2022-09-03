import 'package:dr_jadoo/constants/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/assets.dart';
import '../common-widgets/appbar.dart';
import '../common-widgets/asset_card.dart';

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
                height: MediaQuery.of(context).size.height - 70,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    const Divider(
                      color: Colors.white,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage(Assets.home),
                            height: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Assets',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage(Assets.request),
                            height: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Requests',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage(Assets.timeline),
                            height: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Timeline',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: MediaQuery.of(context).size.height - 70,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                color: AppColors.backgroundColor,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Center(
                          child: Text('Hi Jane Doe!'),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        AssetCard(
                          assetType: 'laptop',
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
