import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/appbar/appbar.dart';
import 'package:spotify_clone/common/widgets/batton/Basic_batton.dart';
import 'package:spotify_clone/core/configs/assets/images/Image_path.dart';
import 'package:spotify_clone/core/configs/assets/vectors/vector_assets.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/auth/pages/Sign_In.dart';
import 'package:spotify_clone/presentation/auth/pages/Sign_Up_Page.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: AlignmentGeometry.topRight,
            child: SvgPicture.asset(VectorAssets.toppattern),
          ),
          Align(
            alignment: AlignmentGeometry.bottomRight,
            child: SvgPicture.asset(VectorAssets.bottompattern),
          ),
          Align(
            alignment: AlignmentGeometry.bottomLeft,
            child: Image.asset(ImagePath.authbg),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(VectorAssets.logoPath),
                  const SizedBox(height: 55),
                  const Text(
                    "Enjoy listening to music",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  SizedBox(height: 21),

                  Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: AppColors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicBatton(onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>const SignUpPage()
                         
                         ));

                        }, title: "Register"),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>const SignIn()));

                        },
                         child:const Text("Sign in",style: TextStyle(
                          fontSize: 19,color:AppColors.grey,
                          fontWeight: FontWeight.w500,
                         ),)),
                      )
                    ],
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
