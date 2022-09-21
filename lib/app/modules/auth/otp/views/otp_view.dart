import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:free_lance/app/core/app_color.dart';
import 'package:free_lance/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../core/app_style.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          style: TextStyle(color: AppColor.primaryLight, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "We have sent a verification code to",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "+91 XXXX451316",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                autoDisposeControllers: false,
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  disabledColor: AppColor.accent,
                  activeColor: AppColor.accent,
                  inactiveColor: AppColor.accent,
                  selectedFillColor: const Color.fromARGB(62, 105, 225, 255),
                  errorBorderColor: AppColor.accent,
                  inactiveFillColor: Colors.white,
                  // inactiveColor: Colors.amber,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: AppColor.accent,
                ),

                animationDuration: const Duration(milliseconds: 300),
                //backgroundColor: Colors.blue.shade50,
                enableActiveFill: true,
                // errorAnimationController: errorController,

                onCompleted: (v) {
                  // print("Completed");
                },
                onChanged: (value) {
                  // print(value);

                  // currentText = value;
                },
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      side: BorderSide(color: AppColor.accent, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
              onPressed: () {
                // Get.to(const SignupView());
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: 4.h, bottom: 4.h, left: 140.w, right: 140.w),
                child: Text(
                  'Resend SMS in 13 sec',
                  style: h1Style(black: true),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.signup);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: 4.h, bottom: 4.h, left: 245.w, right: 245.w),
                child: Text(
                  'Continue',
                  style: h1Style(black: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
