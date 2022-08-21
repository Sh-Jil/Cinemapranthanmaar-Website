import 'package:cinemapranthanmaar/routes.dart';
import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../responsive.dart';
import '../shared/exbutton.dart';

class OurValuesSection extends StatefulWidget {
  const OurValuesSection({Key? key}) : super(key: key);

  @override
  State<OurValuesSection> createState() => _OurValuesSectionState();
}

class _OurValuesSectionState extends State<OurValuesSection> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          color: Colors.orange,
          width: 122,
          // height: 1,
        ),
        const _RightSection(),
        Container(
          color: Colors.orange,
          width: 120,
          // height: 1,
        ),
      ],
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 614,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EXCButton(
            width: (Responsive.isMobile(context)) ? 161 : 208,
            height: (Responsive.isMobile(context)) ? 48 : 64,
            color: AppColors.white,
            borderColor: AppColors.orange,
            child: Text(
              "Privacy Policy",
              style: TextStyle(
                  color: AppColors.darkBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: (Responsive.isMobile(context)) ? 14 : 16),
            ),
            onPressed: () => Navigator.pushReplacementNamed(
                context, RoutesName.privacyPolicy),
          ),
          const SizedBox(
            width: 100,
          ),
          EXCButton(
            width: (Responsive.isMobile(context)) ? 161 : 208,
            height: (Responsive.isMobile(context)) ? 48 : 64,
            color: AppColors.white,
            borderColor: AppColors.orange,
            child: Text(
              "Terms Of Use",
              style: TextStyle(
                  color: AppColors.darkBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: (Responsive.isMobile(context)) ? 14 : 16),
            ),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, RoutesName.terms),
          )
        ],
      ),
    );
  }
}
