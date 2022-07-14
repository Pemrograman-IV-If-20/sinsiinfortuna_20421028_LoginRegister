// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names, unused_field, unnecessary_new

import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/Components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/Screens/Login/LoginScreens.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {

  final _formKey = GlobalKey<FormState>();
  String? fullname;
  String? username;
  String? email;
  String? password;
  bool? remember = false;

  TextEditingController txtUserName = TextEditingController(),
                        txtFullName = TextEditingController(),
                        txtEmail = TextEditingController(),
                        txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
       child: Column(
         children: [
           buildFullName(),
           SizedBox(
             height: getProportionateScreenHeight(30)),
           buildUserName(),
           SizedBox(
             height: getProportionateScreenHeight(30)),
             buildEmail(),
           SizedBox(
             height: getProportionateScreenHeight(30)),
             buildPassword(),
           SizedBox(
             height: getProportionateScreenHeight(30)),
             
             Row(
               children: [
               ],
               ),
               DefaultButtonCustomeColor(
                 color: kPrimaryColor,
                 text: "REGISTRASI",
                 press: () {},
               ),
               SizedBox(
                 height: 20,
               ),
               GestureDetector(
                     onTap: () {
                       Navigator.pushNamed(context, LoginScreen.routeName);
                     },
                     child: Text(
                       "Sudah Punya Akun? Login Disini", 
                       style: TextStyle(
                         decoration: TextDecoration.underline),
                         )
                         
                   ),
                   SizedBox(
                 height: 80,
               ),
         ],
         ),
       );
  }

  TextFormField buildFullName(){
    return TextFormField(
      controller: txtFullName,
        keyboardType: TextInputType.text,
        style: mTitleStyle,
        decoration: InputDecoration(
          labelText: 'Nama Lengkap',
          hintText: 'Masukkan nama lengkap anda',
          labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
            )),
    );
  }

  TextFormField buildUserName(){
    return TextFormField(
      controller: txtUserName,
        keyboardType: TextInputType.text,
        style: mTitleStyle,
        decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukkan username anda',
          labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
            )),
    );
  }

  TextFormField buildEmail(){
    return TextFormField(
      controller: txtEmail,
        keyboardType: TextInputType.text,
        style: mTitleStyle,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Masukkan email lengkap anda',
          labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Mail.svg",
            )),
    );
  }

  TextFormField buildPassword(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
        style: mTitleStyle,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan password anda',
          labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
            )),
    );
  }

}