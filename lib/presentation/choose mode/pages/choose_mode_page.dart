// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/batton/Basic_batton.dart'
    show BasicBatton;
import 'package:spotify_clone/core/configs/assets/images/Image_path.dart';
import 'package:spotify_clone/core/configs/assets/vectors/vector_assets.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/auth/pages/Signup_or_SignIn.dart';
import 'package:spotify_clone/presentation/choose%20mode/block/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImagePath.choosemodebg),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentGeometry.topCenter,
                    child: SvgPicture.asset(VectorAssets.logoPath),
                  ),
                  Spacer(),
                  Text(
                    "Choose Mode",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                            },
                          child:ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 73,
                                width: 73,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393c).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(VectorAssets.moon,fit: BoxFit.none,),
                              ),
                            ),
                          ),),
                          SizedBox(height: 15,),
                          Text("Dark Mode",style:TextStyle(
                            fontSize: 17,
                            color:AppColors.grey,
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      ),
                      SizedBox(width: 40),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                            },
                            child: ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                    color: Color(0xff30393c).withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(VectorAssets.sun,fit: BoxFit.none,),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("Light Mode",style:TextStyle(
                            fontSize: 17,
                            color:AppColors.grey,
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  BasicBatton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const SignupOrSignin(),
                        ),
                      );
                    },
                    title: "Continue",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
