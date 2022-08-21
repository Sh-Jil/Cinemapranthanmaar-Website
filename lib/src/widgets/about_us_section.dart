import 'package:flutter/material.dart';
import '../res/colors.dart';
import '../responsive.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({Key? key}) : super(key: key);

  @override
  State<AboutUsSection> createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  @override
  Widget build(BuildContext context) {
    return (Responsive.isMobile(context))
        ? Column(
            // crossAxisAlignment: WrapCrossAlignment.center,
            // alignment: WrapAlignment.end,
            children: const [
              _AboutUsText(),
              _Image(),
              SizedBox(height: 16),
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.end,
            children: [
              Container(
                color: Colors.orange,
                width: 105,
                // height: 1,
              ),
              const _Image(),
              const SizedBox(width: 30),
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

class _Image extends StatelessWidget {
  const _Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 546,
      child: Image.asset(
        "assets/png/Screenshot.png",
        width: 385,
        height: 666,
      ),
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 639,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          _AboutUsText(),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}

class _AboutUsText extends StatelessWidget {
  const _AboutUsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 639,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Discover",
            textAlign: (Responsive.isMobile(context))
                ? TextAlign.center
                : TextAlign.start,
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w800,
                fontSize: (Responsive.isMobile(context)) ? 24 : 52),
          ),
          SizedBox(height: (Responsive.isMobile(context)) ? 16 : 35),
          Padding(
            padding: (Responsive.isMobile(context))
                ? const EdgeInsets.symmetric(horizontal: 26)
                : EdgeInsets.zero,
            child: Text(
              "Find your next favorite movies & TV shows by searching",
              textAlign: (Responsive.isMobile(context))
                  ? TextAlign.center
                  : TextAlign.start,
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w400,
                  height: 1.6,
                  fontSize: (Responsive.isMobile(context)) ? 12 : 20),
            ),
          ),
        ],
      ),
    );
  }
}
