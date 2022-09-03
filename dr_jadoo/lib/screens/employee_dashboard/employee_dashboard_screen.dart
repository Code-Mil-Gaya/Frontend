import 'package:dotted_border/dotted_border.dart';
import 'package:dr_jadoo/constants/colours.dart';
import 'package:dr_jadoo/constants/strings.dart';
import 'package:dr_jadoo/model/User/current_user.dart';
import 'package:dr_jadoo/screens/common-widgets/tile_card.dart';
import 'package:dr_jadoo/services/employee_dashboard_service.dart';
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
  CurrentUser? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initstate();
  }

  void initstate() async {
    final CurrentUser? _user = await EmployeeDashboardService.instance.getCurrentUser();
    setState(() {
      user = _user;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.white,
            elevation: 5.0,
            leadingWidth: 250.0,
            leading: Image.asset(Assets.jadooLogoSmall, fit: BoxFit.contain)),
        body: user != null
            ? Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.91,
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
                                  children: [
                                    Text(
                                      user!.groups!.map((u) => u.name).join("/n"),
                                      style: Theme.of(context).textTheme.subtitle2!.copyWith(color: AppColors.white),
                                    ),
                                    Text(
                                      user!.designation.toString(),
                                        style: Theme.of(context).textTheme.headline6!.copyWith(color: AppColors.textColor),
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
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Image(
                                      image: AssetImage(Assets.asset),
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Assets',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
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
                          height: MediaQuery.of(context).size.height * 0.91,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          color: AppColors.backgroundColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  DottedBorder(
                                    borderType: BorderType.Circle,
                                    radius: const Radius.circular(50),
                                    padding: const EdgeInsets.all(6),
                                    color: AppColors.primaryColor,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                      child: Container(
                                        height: 75,
                                        width: 75,
                                        color: AppColors.primaryColor,
                                        child: Center(child: Text('${user!.username![0]}${user!.username!.split(' ')[1][0]}', style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColors.white),)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Hi ${user!.username} !',
                                        style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColors.black),
                                      ),
                                      Text(
                                        AppStrings.employeeDashboardWelcome,
                                        style: Theme.of(context).textTheme.headline6!.copyWith(color: AppColors.grey),
                                      ),
                                  ]
                                )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  AssetCard(
                                    assetType: 'laptop',
                                  ),
                                  AssetCard(
                                    assetType: 'mobile',
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Image(
                                      image: AssetImage(Assets.addNewAsset), 
                                      fit: BoxFit.cover,
                                      height: 300
                                      )
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TileCard(backgroundImage: Assets.requestTab, tileImage: Assets.request, text: AppStrings.requests, onTap: () {}),
                                  TileCard(backgroundImage: Assets.timelineTab, tileImage: Assets.timeline, text: AppStrings.timeline, onTap: () {})
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            : const Center(
              child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
            ));
  }
}
