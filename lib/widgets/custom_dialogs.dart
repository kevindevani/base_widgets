import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showOkDialog(String title, String content, BuildContext context,
    {Function() onConfirm}) {
  Get.defaultDialog(title: title, middleText: content, onConfirm: onConfirm);
}

void showOkCancelDialog(String title, String content, BuildContext context,
    {Function() onConfirm, Function() onCancel}) {
  Get.defaultDialog(
      title: title,
      middleText: content,
      onConfirm: onConfirm,
      onCancel: onCancel);
}

void showOkCancelCustomDialog(
    String title, String content, BuildContext context,
    {Function() onConfirm, Function() onCancel, Function() onCustom}) {
  Get.defaultDialog(
      title: title,
      middleText: content,
      onConfirm: onConfirm,
      onCancel: onCancel,
      onCustom: onCustom);
}
// void showCustomDialog(){
//     Get.defaultDialog(
//         title: '',
//         content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//                 TextField(
//                     keyboardType: TextInputType.text,
//                     maxLines: 1,
//                     decoration: InputDecoration(
//                         labelText: 'Category Name',
//                         hintMaxLines: 1,
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.green, width: 4.0))),
//                 ),
//             ],
//         ),
//         confirm: MyButton(btnText : "Ok",
//         onPressed: (){
//             Get.back();
//         },),
//         cancel:  MyCancelButton(btnText : "No",
//             onPressed: (){
//                 Get.back();
//             },),
//         radius: 10.0);
// }

void showSuccessSnackBar(
  String title,
  String message,
) {
  Get.snackbar(title, message,
      backgroundColor: Colors.black, colorText: Colors.white);
}

void showErrorSnackBar(
  String title,
  String message,
) {
  Get.snackbar(title, message,
      backgroundColor: Colors.red, colorText: Colors.white);
}
