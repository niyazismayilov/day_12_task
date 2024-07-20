
import 'package:day_17_tapsiriq/app/constants/app_assets.dart';
import 'package:day_17_tapsiriq/app/constants/app_paddings.dart';
import 'package:day_17_tapsiriq/presentation/components/view/button/primary_button.dart';
import 'package:day_17_tapsiriq/presentation/components/view/text/primary_text.dart';
import 'package:day_17_tapsiriq/presentation/components/view/text_field/primary_text_field.dart';
import 'package:day_17_tapsiriq/presentation/shared/color.dart';
import 'package:day_17_tapsiriq/presentation/ui/login/view/login_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginBackground(
        child: Padding(
          padding: AppPaddings.a24,
          child: SafeArea(
            child: SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.loginPhoto),
                  32.verticalSpace,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: PrimaryText(
                      text: "Login Details",
                      textColor: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  16.verticalSpace,
                  const PrimaryTextField(
                    hint: "Username , email & phone number",
                    backgroundColor: UIColor.transparent,
                    borderColor: UIColor.textFieldGray,
                  ),
                  8.verticalSpace,
                  const PrimaryTextField(
                    hint: "Password",
                    backgroundColor: UIColor.transparent,
                    borderColor: UIColor.textFieldGray,
                  ),
                  6.verticalSpace,
                  const Align(
                    alignment: Alignment.centerRight,
                    child: PrimaryText(
                      text: "Forgot Password?",
                      textColor: UIColor.textFieldGray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  32.verticalSpace,
                  PrimaryButton(
                    title: "Login",
                    backgroundColor: UIColor.blue,
                    borderRadius: 5,
                    fontWeight: FontWeight.w700,
                    textSize: 18.sp,
                    onPressed: () {
                      //Log In Pressed
                    },
                  ),
                  32.verticalSpace,
                  Row(
                    children: [
                      Expanded(child: SvgPicture.asset(AppAssets.shadowLeft)),
                      Padding(
                        padding: AppPaddings.h6,
                        child: PrimaryText(text: "Or Sign up With", textColor: UIColor.textFieldGray, fontSize: 12.sp,),
                      ),
                      Expanded(child: SvgPicture.asset(AppAssets.shadowRight)),
                    ],
                  ),
                  32.verticalSpace,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: (){
                          ///Google Tapped
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: UIColor.whiteShadow
                          ),
                          child: Padding(
                            padding: AppPaddings.a12,
                            child: SvgPicture.asset(AppAssets.googleIcon),
                          ),
                        ),
                      ),
                      16.horizontalSpace,
                      InkWell(
                        onTap: (){
                          ///Facebook Tapped
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: UIColor.whiteShadow
                          ),
                          child: Padding(
                            padding: AppPaddings.a12,
                            child: SvgPicture.asset(AppAssets.facebookIcon),
                          ),
                        ),
                      ),
                      16.horizontalSpace,
                      InkWell(
                        onTap: (){
                          ///Apple Tapped
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: UIColor.whiteShadow
                          ),
                          child: Padding(
                            padding: AppPaddings.a12,
                            child: SvgPicture.asset(AppAssets.appleIcon),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
