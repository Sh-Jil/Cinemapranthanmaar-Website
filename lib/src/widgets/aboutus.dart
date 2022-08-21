import 'package:cinemapranthanmaar/src/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../res/colors.dart';
import '../responsive.dart';
import '../shared/exbutton.dart';

Future scrolltoItem() async {
  final context = key.currentContext!;
  await Scrollable.ensureVisible(context);
}

class RightSection extends StatelessWidget {
  const RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        AboutUsText(),
        SizedBox(height: 35),
        _Frame100(),
      ],
    );
  }
}

class AboutUsText extends StatelessWidget {
  const AboutUsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 639,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "About Us",
            textAlign: TextAlign.center,
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
              "Kerala's Online Infotainment Media Platfrom Fully Based On MOVIES, Bringing The Latest And Exclusive Movie Updates",
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

class _Frame100 extends StatelessWidget {
  const _Frame100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EXCButton(
              onPressed: () {
                final Uri url =
                    Uri.parse('https://www.instagram.com/cinemapranthanmarr/');
                launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
              },
              color: AppColors.orange,
              height: (Responsive.isMobile(context)) ? 48 : 64,
              width: (Responsive.isMobile(context)) ? 100 : 150,
              child: SvgPicture.asset(
                "assets/svg/social/instagram.svg",
                height: (Responsive.isMobile(context)) ? 48 : 64,
                width: (Responsive.isMobile(context)) ? 100 : 208,
              )),
          const _Frame100ItemSpacer(),
          EXCButton(
              onPressed: () {
                final Uri url =
                    Uri.parse('https://www.youtube.com/c/CinemaPranthanmar');
                launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
              },
              height: (Responsive.isMobile(context)) ? 48 : 64,
              width: (Responsive.isMobile(context)) ? 100 : 150,
              child: SvgPicture.asset(
                "assets/svg/social/youtube.svg",
                color: Colors.black,
                height: (Responsive.isMobile(context)) ? 48 : 64,
                width: (Responsive.isMobile(context)) ? 100 : 208,
              )),
          const _Frame100ItemSpacer(),
          EXCButton(
              onPressed: () {
                final Uri url = Uri.parse(
                    'https://www.facebook.com/Cinema-Pranthanmar-763052020538696/');
                launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
              },
              height: (Responsive.isMobile(context)) ? 48 : 64,
              width: (Responsive.isMobile(context)) ? 100 : 150,
              child: SvgPicture.asset(
                "assets/svg/social/facebook.svg",
                color: Colors.black,
                height: (Responsive.isMobile(context)) ? 48 : 64,
                width: (Responsive.isMobile(context)) ? 100 : 208,
              ))
        ],
      ),
    );
  }
}

class _Frame100Item extends StatelessWidget {
  final String title;
  final String count;
  const _Frame100Item({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
                fontSize: 23),
          ),
          Text(
            count,
            style: const TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 40),
          ),
        ],
      ),
    );
  }
}

class _Frame100ItemSpacer extends StatelessWidget {
  const _Frame100ItemSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 3,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      color: AppColors.orange,
    );
  }
}

class _Frame111 extends StatelessWidget {
  const _Frame111({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          EXCButton(
              color: AppColors.orange,
              height: (Responsive.isMobile(context)) ? 48 : 64,
              width: (Responsive.isMobile(context)) ? 100 : 250,
              child: SvgPicture.asset(
                "assets/svg/social/instagram.svg",
                height: (Responsive.isMobile(context)) ? 48 : 64,
                width: (Responsive.isMobile(context)) ? 161 : 208,
              )),
          const SizedBox(
            height: 16,
          ),
          const _Frame111Spacer(),
          const SizedBox(
            height: 32,
          ),
          EXCButton(
              color: AppColors.orange,
              height: (Responsive.isMobile(context)) ? 48 : 64,
              width: (Responsive.isMobile(context)) ? 100 : 250,
              child: SvgPicture.asset(
                "assets/svg/social/youtube.svg",
                color: Colors.black,
                height: (Responsive.isMobile(context)) ? 48 : 64,
                width: (Responsive.isMobile(context)) ? 161 : 208,
              )),
          const SizedBox(
            height: 16,
          ),
          const _Frame111Spacer(),
          const SizedBox(
            height: 32,
          ),
          EXCButton(
              color: AppColors.orange,
              height: (Responsive.isMobile(context)) ? 48 : 64,
              width: (Responsive.isMobile(context)) ? 100 : 250,
              child: SvgPicture.asset(
                "assets/svg/social/facebook.svg",
                color: Colors.black,
                height: (Responsive.isMobile(context)) ? 48 : 64,
                width: (Responsive.isMobile(context)) ? 161 : 208,
              )),
        ],
      ),
    );
  }
}

class _Frame111Item extends StatelessWidget {
  final String title;
  final String count;
  const _Frame111Item({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 64,
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    color: const Color(0xffFFEDE6),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Text(
                    count,
                    style: const TextStyle(
                        color: AppColors.orange,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
      ],
    );
  }
}

class _Frame111Spacer extends StatelessWidget {
  const _Frame111Spacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orange,
      height: 2,
      width: double.infinity,
    );
  }
}
