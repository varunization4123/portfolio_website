import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryBlack,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 6),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            height: 54,
            width: 54,
          ),
          const Expanded(child: SizedBox()),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Text(
                  'Projects',
                  style: TextStyle(color: whiteText),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Skills',
                  style: TextStyle(color: whiteText),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'About Me',
                  style: TextStyle(color: whiteText),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 36,
          ),
          Row(
            children: [
              InkWell(
                onTap: (() => _launchUrl(
                    'https://www.behance.net/varuncuntoor?tracking_source=search_users%7CVarun%20Cuntoor')),
                child: const Image(
                  image: AssetImage('assets/images/behance_color.png'),
                  height: 32,
                  width: 29,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: (() => _launchUrl('https://dribbble.com/varunization')),
                child: const Image(
                  image: AssetImage('assets/images/dribbble_color.png'),
                  height: 32,
                  width: 29,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: (() =>
                    _launchUrl('https://www.instagram.com/thevaruncontur')),
                child: const Image(
                  image: AssetImage('assets/images/instagram_color.png'),
                  height: 32,
                  width: 29,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
