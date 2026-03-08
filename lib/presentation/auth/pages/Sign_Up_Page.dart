import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/appbar/appbar.dart';
import 'package:spotify_clone/common/widgets/batton/Basic_batton.dart';
import 'package:spotify_clone/core/configs/assets/vectors/vector_assets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        title: SvgPicture.asset(VectorAssets.logoPath, height: 33, width: 108),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _titleText(),
              const SizedBox(height: 20),
              _fullnameInput(context),
              const SizedBox(height: 10),
              _emailInput(context),
              const SizedBox(height: 10),
              _passwordInput(context),
              const SizedBox(height: 15),
              BasicBatton(onPressed: () {}, title: 'Create Account'),
               const SizedBox(height: 20),
               Text("or",style: TextStyle(fontSize: 15),),
                const SizedBox(height: 20),
                _alradyAccount(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _titleText() {
    return Column(
      children: [
        Text(
          "Register",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  //name input widget
  Widget _fullnameInput(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your Name..',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  //emain Input widget

  Widget _emailInput(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your Email..',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  //emain Input widget

  Widget _passwordInput(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your password..',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  //alrady account
  Widget _alradyAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Do You Have An Account?",style:TextStyle(
          fontSize: 14,

        ),),
        TextButton(onPressed: (){}, child: Text("Sign In"))
      ],
    );
  }
}

