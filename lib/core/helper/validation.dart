// // ignore_for_file: unused_local_variable
// import '../constant/constants.dart';
// import '../widget/custom_drop_down.dart';

// validateName(String value) {
//   if (value.isEmpty) {
//     return translateString(
//         'you should enter user name', 'يرجي ادخال اسم المستخدم');
//   }
//   // else if (!regExp.hasMatch(value)) {
//   //   return "Name must be a-z and A-Z";
//   //}
//   return null;
// }

// validate(String value) {
//   if (value.isEmpty) {
//     return translateString("this feild is required", "هذا الحقل مطلوب");
//   }
//   return null;
// }

// validatePassword(String value) {
//   Pattern pattern = r'^.{6,}$';
//   RegExp regex = RegExp(pattern.toString());
//   if (value.isEmpty) {
//     return translateString(
//         'you should enter password', 'يجب ادخال كلمة المرور');
//   } else if (!regex.hasMatch(value)) {
//     return translateString('password must be more than 6',
//         'يجب ان تكون كلمه المرور اكبر من 6 ارقام ');
//   }
//   return null;
// }

// validateConfirmPassword(String value, String confirm) {
//   Pattern pattern = r'^.{6,}$';
//   RegExp regex = RegExp(pattern.toString());
//   if (value.isEmpty) {
//     return translateString(
//         'you should enter password', 'يجب ادخال كلمة المرور');
//   } else if (value != confirm) {
//     return translateString(
//         'passwords must be equal', 'يجب ان تكونا كلمتا المرور متطابقتين');
//   }
//   return null;
// }

// validateEmail(String value) {
//   Pattern pattern =
//       r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//   RegExp regex = RegExp(pattern.toString());
//   if (value.isEmpty) {
//     return translateString(
//         "email address is required", "يرجي ادخال البريد الالكتروني");
//   } else if (!regex.hasMatch(value)) {
//     return translateString(
//         'you should enter valid Email', 'يجب ادخل البريد الالكتروني بشكل صحيح');
//   }
//   return null;
// }

// validateMobile(String value) {
//   String patttern = r'(^[0-9]*$)';
//   RegExp regExp = RegExp(patttern);
//   if (value.isEmpty) {
//     return translateString(
//         'you should enter phone number', 'يجب ادخل رقم الهاتف ');
//   } else if (CustomDropDown.chosenValue != null) {
//     if (CustomDropDown.chosenValue == "الكويت" ||
//         CustomDropDown.chosenValue == "قطر" ||
//         CustomDropDown.chosenValue == "عمان") {
//       if (value.length != 8) {
//         return translateString(
//             "mobile phone must 8 digits", 'رقم الهاتف يجب ان يكون 8 ارقام');
//       } else {
//         return null;
//       }
//     } else if (CustomDropDown.chosenValue == "السعودية" ||
//         CustomDropDown.chosenValue == "الامارات" ||
//         CustomDropDown.chosenValue == "البحرين") {
//       if (value.length != 9) {
//         return translateString(
//             "mobile phone must 9 digits", 'رقم الهاتف يجب ان يكون 9 ارقام');
//       }
//     } else {
//       return null;
//     }
//   } else if (!regExp.hasMatch(value)) {
//     return translateString(
//         "mobile phone must digits", 'رقم الهاتف يجب ان يكون ارقام');
//   }

//   return null;
// }
