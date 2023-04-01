import 'package:flutter/material.dart';
import '../features/home/views/home_screen.dart';

class ValidatorMethods {
  //Controllers
  static TextEditingController fullNamecontroller = TextEditingController();
  static TextEditingController emailController1 = TextEditingController();
  static TextEditingController emailController2 = TextEditingController();
  static TextEditingController emailController3 = TextEditingController();
  static TextEditingController phoneNumbercontroller = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController passwordController1 = TextEditingController();
  static TextEditingController confirmPasswordController =
      TextEditingController();
  static final loginFormKey = GlobalKey<FormState>();
  static final signUpFormKey = GlobalKey<FormState>();
  static final recoverPasswordFormKey = GlobalKey<FormState>();

//Validations
  validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Full Name.';
    }
    if (value.length < 3) {
      return 'Full name must be at least 3 characters long.';
    }
    if (value.length > 15) {
      return 'Exceeded 15 characters';
    }
    return null;
  }

  var regEmail = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Email is required";
    }
    if (!regEmail.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp phoneNumReg = RegExp(
      r"^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");
  String? phoneValidator(String? value) {
    if (!phoneNumReg.hasMatch(value!)) {
      return 'Enter a valid phone number';
    } else if (value.length > 12 || value.length < 8) {
      return 'Enter at least 8 numbers!';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password.';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }
    return null;
  }

  static String? loginFormSubmit(BuildContext context) {
    if (loginFormKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())),
          (route) => false);
    }
    return null;
  }

  static String? signUpFormSubmit(BuildContext context) {
    if (signUpFormKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())),
          (route) => false);
    }
    return null;
  }

  static String? recoverPasswordSubmit(BuildContext context) {
    if (recoverPasswordFormKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())),
          (route) => false);
    }
    return null;
  }
}
