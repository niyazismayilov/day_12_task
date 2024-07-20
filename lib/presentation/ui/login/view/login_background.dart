import 'package:day_17_tapsiriq/app/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(AppAssets.loginBottom, width: 1.sw,),
            ),
          ),
        Positioned.fill(child: child)
      ],
    );
  }
}
