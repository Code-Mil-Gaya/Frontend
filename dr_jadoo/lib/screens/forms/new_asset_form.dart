import 'package:dr_jadoo/model/Asset/asset_create.dart';
import 'package:dr_jadoo/services/assets_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/colours.dart';
import '../../constants/strings.dart';
import '../../widget/custom_text_form_field.dart';

class NewAssetForm extends StatefulWidget {
  const NewAssetForm({Key? key}) : super(key: key);

  @override
  State<NewAssetForm> createState() => _NewAssetFormState();
}

class _NewAssetFormState extends State<NewAssetForm> {
  GlobalKey<FormState> newAssetFormKey = GlobalKey<FormState>();
  bool obscureText = true;

  TextEditingController assetSerialNumberController = TextEditingController();
  TextEditingController assetNameController = TextEditingController();
  TextEditingController assetCategoryController = TextEditingController();
  TextEditingController assetCategoryTypeController = TextEditingController();
  TextEditingController assetModelController = TextEditingController();
  TextEditingController assetPurchaseDateController = TextEditingController();
  TextEditingController assetManufactureDateController =
      TextEditingController();
  TextEditingController assetAmountController = TextEditingController();

  FocusNode assetSerialNumberFocusNode = FocusNode();
  FocusNode assetTypeFocusNode = FocusNode();
  FocusNode assetModelFocusNode = FocusNode();
  FocusNode assetPurchaseDateFocusNode = FocusNode();
  FocusNode assetManufactureDateFocusNode = FocusNode();
  FocusNode assetAmountFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextFormField(
          controller: assetSerialNumberController,
          focusNode: assetSerialNumberFocusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Serial Number',
        ),
        CustomTextFormField(
          controller: assetCategoryController,
          focusNode: assetTypeFocusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Asset Category',
        ),
        CustomTextFormField(
          controller: assetCategoryTypeController,
          focusNode: assetTypeFocusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Asset Category Type',
        ),
        CustomTextFormField(
          controller: assetModelController,
          focusNode: assetModelFocusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Asset Model',
        ),
        CustomTextFormField(
          controller: assetPurchaseDateController,
          focusNode: assetPurchaseDateFocusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Asset Purchase Date (yyyy-mm-dd)',
        ),
        CustomTextFormField(
          controller: assetManufactureDateController,
          focusNode: assetManufactureDateFocusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Asset Manufacture Date (yyyy-mm-dd)',
        ),
        CustomTextFormField(
          controller: assetAmountController,
          focusNode: assetAmountFocusNode,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          obscureText: obscureText,
          validator: (String? value) {
            if (value?.isEmpty ?? true) {
              return AppStrings.pleaseEnterValidData;
            }
          },
          hintText: 'Asset Amount',
        ),
        GestureDetector(
            onTap: () async {
              AssetCreate asset = AssetCreate(
                  name: assetNameController.text,
                  serialNumber: assetSerialNumberController.text,
                  model: assetModelController.text,
                  amount: int.parse(assetAmountController.text),
                  category: assetCategoryController.text,
                  categoryType: assetCategoryTypeController.text,
                  purchaseDate: assetPurchaseDateController.text,
                  manufacturedDate: assetManufactureDateController.text);
              AssetService.instance.createAsset(asset);
            },
            child: Text('Raise Request',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400)))
      ],
    );
  }
}
