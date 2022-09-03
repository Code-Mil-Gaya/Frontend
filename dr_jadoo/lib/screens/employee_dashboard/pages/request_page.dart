import 'package:dr_jadoo/constants/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

import '../../../constants/assets.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int selected = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.91,
          padding:
              const EdgeInsets.only(left: 40, right: 60, top: 30, bottom: 30),
          color: AppColors.backgroundColor,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 0;
                            });
                          },
                          child: Text(
                            'Applied Request',
                            style: TextStyle(
                                fontSize: 30,
                                color: selected == 0
                                    ? AppColors.textColor
                                    : Colors.black),
                          ),
                        ),
                        Divider(
                          thickness: selected == 0 ? 5 : 1,
                          color:
                              selected == 0 ? AppColors.textColor : Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          child: Text(
                            'Incoming Request',
                            style: TextStyle(
                                fontSize: 30,
                                color: selected == 1
                                    ? AppColors.textColor
                                    : Colors.black),
                          ),
                        ),
                        Divider(
                          thickness: selected == 1 ? 5 : 1,
                          color:
                              selected == 1 ? AppColors.textColor : Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.white),
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Image.asset(
                                  Assets.laptopPlaceholder,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  right: 12,
                                  top: 12,
                                  child: Container(
                                    height: 25,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color: AppColors.error,
                                        border:
                                            Border.all(color: AppColors.error),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                        child: Text(
                                      'Pending',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(color: AppColors.white),
                                    )),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              'Macbook Pro',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Model',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              '(13 inch, M1, 2020)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Serial Number',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              '(BNA12345232SH)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Purchase Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              '22/04/2022',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Manufacture Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              '13/02/2020',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Asset Type',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              'Laptop',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Request Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: AppColors.grey),
                            ),
                            Text(
                              '04/06/2022',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: AppColors.black),
                            ),
                          ],
                        ),
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
