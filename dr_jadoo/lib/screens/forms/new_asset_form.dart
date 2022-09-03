import 'package:dr_jadoo/model/Asset/asset_create.dart';
import 'package:dr_jadoo/services/assets_service.dart';
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
  bool obscureText = false;

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
  FocusNode assetCategoryTypeFocusNode = FocusNode();
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
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Raise New Request',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
          CustomTextFormField(
            controller: assetCategoryTypeController,
            focusNode: assetCategoryTypeFocusNode,
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.black)),
              onPressed: () async {
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
                      fontWeight: FontWeight.w400))),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.black)),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel Request',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400)),
          )
        ],
      ),
    );
  }
}
