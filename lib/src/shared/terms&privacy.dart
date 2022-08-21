import 'package:cinemapranthanmaar/routes.dart';
import 'package:cinemapranthanmaar/src/res/strings.dart';
import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../responsive.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () =>
                Navigator.popAndPushNamed(context, RoutesName.home),
            icon: const Icon(Icons.arrow_back)),
        foregroundColor: AppColors.darkBlack,
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: (Responsive.isMobile(context))
              ? const EdgeInsets.only(
                  top: 8.0, bottom: 16.0, left: 48.0, right: 48.0)
              : const EdgeInsets.only(
                  top: 24.0, bottom: 48.0, left: 120.0, right: 120.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "Privacy Policy",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: (Responsive.isMobile(context)) ? 20 : 24),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                privacy,
                style: TextStyle(
                    color: AppColors.darkBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: (Responsive.isMobile(context)) ? 14 : 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () =>
                Navigator.popAndPushNamed(context, RoutesName.home),
            icon: const Icon(Icons.arrow_back)),
        foregroundColor: AppColors.darkBlack,
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: (Responsive.isMobile(context))
              ? const EdgeInsets.only(
                  top: 8.0, bottom: 16.0, left: 48.0, right: 48.0)
              : const EdgeInsets.only(
                  top: 24.0, bottom: 48.0, left: 120.0, right: 120.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "Terms Of use",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: (Responsive.isMobile(context)) ? 20 : 24),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                terms,
                style: TextStyle(
                    color: AppColors.darkBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: (Responsive.isMobile(context)) ? 14 : 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
