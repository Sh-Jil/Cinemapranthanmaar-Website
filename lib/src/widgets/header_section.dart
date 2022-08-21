import 'package:cinemapranthanmaar/src/widgets/aboutus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../res/colors.dart';
import '../responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.orange,
                width: 16,
                // height: 1,
              ),
              SvgPicture.asset(
                "assets/png/image.png",
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 10),
              const Text(
                "സിനിമാപ്രാന്തൻമാർ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/svg/drawer.svg",
                width: 29,
                height: 24,
              ),
              Container(
                color: Colors.orange,
                width: 16,
                // height: 1,
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.orange,
                width: 120,
                // height: 1,
              ),
              const Flexible(
                child: HeaderWidget(),
              ),
              Container(
                color: Colors.orange,
                width: 120,
                // height: 1,
              ),
            ],
          );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Image.asset(
            "assets/png/image.png",
            width: 239,
            height: 76,
          ),
          const SizedBox(width: 48),
          const Text(
            "സിനിമാപ്രാന്തൻമാർ",
            style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
          const SizedBox(width: 48),
          TextButton(
            onPressed: (() => scrolltoItem()),
            child: const Text(
              "About us",
              style: TextStyle(
                  color: AppColors.darkBlack,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
          const SizedBox(width: 79),
        ],
      ),
    );
  }
}
