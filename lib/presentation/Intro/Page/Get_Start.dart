// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/batton/Basic_batton.dart';
import 'package:spotify_clone/core/configs/assets/images/Image_path.dart';
import 'package:spotify_clone/core/configs/assets/vectors/vector_assets.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/auth/pages/Signup_or_SignIn.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImagePath.introbg),
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
                    "Enjoy listening to music",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 21,),
                   Text(
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign:TextAlign.center,
                  ),
                  SizedBox(height: 25,),
                  BasicBatton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupOrSignin()));
                  }, title: "Get started",)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
