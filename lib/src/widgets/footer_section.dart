import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../responsive.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlack,
      height: (Responsive.isMobile(context)) ? 376 : 302,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: 302,
            color: const Color(0xff2B2B2B),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: 62,
                width: 195,
                child: Image.asset(
                  'assets/png/image.png',
                  height: 62,
                  width: 195,
                ),
              ),
              const SizedBox(height: 40),
            ],
          )
        ],
      ),
    );
  }
}
