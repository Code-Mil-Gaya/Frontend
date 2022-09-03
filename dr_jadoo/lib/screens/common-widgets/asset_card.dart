import 'package:dr_jadoo/constants/assets.dart';
import 'package:dr_jadoo/constants/colours.dart';
import 'package:flutter/cupertino.dart';

class AssetCard extends StatelessWidget {
  final String assetType;
  const AssetCard({Key? key, required this.assetType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: AppColors.white,
      child: Column(
        children: [
          Image(
            image: AssetImage(assetType == 'laptop'
                ? Assets.laptopPlaceholder
                : Assets.mobilePlaceholder),
            height: 300,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                      'Apple MacBook Pro 14 (M1 Pro, 14.2 inch, 16GB, 512GB, macOS Monterey, Space Grey)')
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Center(
                        child: Text('View Details'),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Center(
                        child: Image(
                          image: AssetImage(Assets.arrowRight),
                          height: 40,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
