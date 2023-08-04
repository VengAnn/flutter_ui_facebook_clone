import 'package:flutter/material.dart';
import 'package:facebook_clone/constant.dart';

import 'HomeScreen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      //
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Spacer(),
              ClipRRect(
                child: Image.network(
                  KLogoFbUrl,
                  width: 60,
                  height: 60,
                ),
              ),
              //
              _getTextField("UserName", false),
              _getTextField("passWord", true),
              //
              _getElevatedButton("Login", context, secondaryColor, null, () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ), (route) => false);
              }),
              //
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: kPimaryColor),
                ),
              ),
              const Spacer(),
              //
              _getElevatedButton("Create new account", context,
                  kPrimaryLightColor, Colors.blue, null),

              //
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget _getTextField(String text, bool ObscureText) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      obscureText: ObscureText,
      decoration: InputDecoration(
        labelText: " $text",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 2,
            color: secondaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 2,
            color: secondaryColor,
          ),
        ),
      ),
    ),
  );
}

// ignore: unused_element
Widget _getElevatedButton(String text, BuildContext context, Color color,
    Color? colorText, onPressed) {
  return Row(
    children: [
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // ignore: unnecessary_new
            borderRadius: new BorderRadius.circular(30.0),
            border: Border.all(width: 1, color: Colors.blue),
          ),
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // ignore: deprecated_member_use
              primary: color,
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
              shape: RoundedRectangleBorder(
                // ignore: unnecessary_new
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: onPressed,
            // ignore: unnecessary_string_interpolations
            child: Text(
              // ignore: unnecessary_string_interpolations
              "$text",
              style: TextStyle(
                color: colorText,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
