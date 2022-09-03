import 'package:dr_jadoo/constants/assets.dart';
import 'package:dr_jadoo/constants/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetCard extends StatelessWidget {
  final String assetType;
  const AssetCard({Key? key, required this.assetType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 310,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(color: AppColors.grey, blurRadius: 2.5)
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Image.asset(assetType == 'laptop'
                      ? Assets.laptopPlaceholder
                      : Assets.mobilePlaceholder, 
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right:12,
                top:12,
                child: Container(
                  height: 25,
                  width: 65,
                  decoration: BoxDecoration(
                    color: AppColors.success,
                    border: Border.all(color: AppColors.success),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Center(child: Text('Good', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: AppColors.white),)),
                )
              ),
              
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Apple MacBook Pro 14', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: AppColors.black),),
                  Text(
                      '(M1 Pro, 14.2 inch, 16GB, 512GB)', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: AppColors.black),),
                  Text('Laptop', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: AppColors.grey),),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 65,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(246, 255, 236, 184),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: const [
                    Center(
                      child: Text('View Details'),
                    ),
                    Center(
                      child: Icon(Icons.arrow_forward, color: AppColors.black, size: 18,) 
                    )
                   ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
